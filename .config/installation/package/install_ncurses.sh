# tmux's dependency

# Download the tarball
wget https://ftp.gnu.org/gnu/ncurses/ncurses-6.2.tar.gz
tar zxvf ncurses-6.2.tar.gz
rm ncurses-6.2.tar.gz

# Configuration, create make file
cd ncurses-6.2
./configure --prefix=${HOME}/.local \
    --with-shared \
    --with-termlib \
    --enable-pc-files \
    --with-pkg-config-libdir=${HOME}/.local/lib/pkgconfig

# Compile
make -j 48

# Installation
make install -j 48

# remove the source code
cd .. && rm -rf ncurses-6.2
