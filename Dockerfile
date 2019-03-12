From ubuntu:xenial

# install pwntools
RUN apt-get update \
    && apt-get install -y python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential \
    && pip install --upgrade pip \
    && sed -i -e '9c from pip import __main__' -e 's/main()/__main__._main()/' /usr/bin/pip \
    && pip install --upgrade pwntools

# install pwndbg
RUN git clone https://github.com/pwndbg/pwndbg \
    && cd pwndbg \
    && ./setup.sh

# install ia32-libs and others
RUN apt-get update \
    && apt-get install -y lib32ncurses5 lib32z1 \
       wget fish \
    && mkdir /pwnspace

WORKDIR /pwnspace

ENTRYPOINT ["fish"]
