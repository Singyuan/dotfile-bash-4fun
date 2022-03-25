# tmux's dependency

# Download the tarball
wget https://github.com/libevent/libevent/releases/download/release-2.1.11-stable/libevent-2.1.11-stable.tar.gz
tar zxvf libevent-2.1.11-stable.tar.gz
rm libevent-2.1.11-stable.tar.gz

# Configuration, create make file
cd libevent-2.1.11-stable
./configure \
    --prefix=${HOME}/.local \
    --enable-shared

# Compile
make -j 48

# Installation
make install

# Remove source code
rm -rf libevent-2.1.11-stable