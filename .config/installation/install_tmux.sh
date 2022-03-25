# Refer to https://github.com/tmux/tmux

# tmp folder for installation
if [ ! -d ${HOME}/tmp ]; then
    mkdir ${HOME}/tmp
fi

cd ${HOME}/tmp
rm -rf ./tmux # make sure!

# ===== setting path =====
local_DIR=${HOME}/.local
# export LD_LIBRARY_PRELOAD=${DIR}/lib
# ========================

# Download the tarball
VERSION=${1:-"3.2a"}
wget https://github.com/tmux/tmux/releases/download/$VERSION/tmux-$VERSION.tar.gz
tar -zxvf tmux-$VERSION.tar.gz
rm tmux-$VERSION.tar.gz

# Configuration, create make file
mv tmux-$VERSION tmux && cd ./tmux
./configure --prefix=$HOME/.local
# # bash autogen.sh
# PKG_CONFIG_PATH=$local_DIR/lib/pkgconfig:$PKG_CONFIG_PATH ./configure \
#     --prefix ${HOME}/.local --enable-static
#     # LIBEVENT_CFLAGS="-I$local_DIR/include" \
#     # LIBEVENT_LIBS="-L$local_DIR/lib" \
#     # LIBTINFO_CFLAGS="-I$local_DIR/include/ncurses" \
#     # LIBTINFO_LIBS="-L$local_DIR/lib"
#     # LIBNCURSES_CFLAGS="-I$local_DIR/include/ncurses" \
#     # LIBNCURSES_LIBS="-L$local_DIR/lib"

# Compile
make -j 48

# Installation
make install

# remove the source code
cd ${HOME} && rm -rf ${HOME}/tmp/tmux