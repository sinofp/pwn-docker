# pwn-docker

A simple container to do some basic pwn in ctf, based on ubuntu:xenial, which includes:

  - pwntools
  - pwndbg
  
and uses fish as its entry shell.

### Usage

```sh
docker run -it -v YOURFILES:/pwnspace --rm --privileged sinofp/pwn
```

Subsitute `YOURFILES` to the folder where you store your elf, scripts, etc.

Besure to use `--privileged` in order to make gdb work properly.




