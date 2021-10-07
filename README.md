## Obfuscation

### Allocate Swap Space
```sh
$ sudo swapoff -v /swapfile
$ sudo fallocate -l 32G /swapfile
$ sudo mkswap /swapfile
$ sudo swapon /swapfile
```