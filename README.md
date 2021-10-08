## Obfuscation

### Allocate Swap Space
```sh
$ sudo swapoff -v /swapfile
$ sudo fallocate -l 32G /swapfile
$ sudo mkswap /swapfile
$ sudo swapon /swapfile
```

### Install LLVM
```sh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
$ vi ~/.bashrc
```
```sh
# Brew install PATH Addition
PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export MANPATH=$(brew --prefix)/share/man:$MANPATH
export INFOPATH=$(brew --prefix)/share/info:$INFOPATH
```
```sh
$ brew install cmake
$ mkdir ./src/build
$ cd ./src/build
$ sudo apt install cmake
$ cmake -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" ../llvm  -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" -DLLVM_USE_LINKER=gold -DCMAKE_BUILD_TYPE=Release
$ make -j8
```

### LLVM Pass Function
```sh
$ ./src/build/bin/clang -emit-llvm -c -S Blink.ino.cpp -o Blink.ino.cpp.ll
$ ./src/build/bin/opt -load ./src/build/lib/LLVMObfuscation.so -preprocess Blink.ino.cpp -o Blink.ino.cpp.ll
$ ./src/build/bin/opt -load ./src/build/lib/LLVMObfuscation.so -rof Blink.ino.cpp.ll -o Blink.ino.cpp.ll
```

### Obfuscation
```sh
$ python obfucate.py
```