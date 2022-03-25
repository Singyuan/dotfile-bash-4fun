# Refer to https://github.com/htop-dev/htop

# tmp folder for installation
if [ ! -d ${HOME}/tmp ]; then
    mkdir ${HOME}/tmp
fi

cd ${HOME}/tmp
rm -rf ./htop # make sure

# ===== setting path =====
local_DIR=${HOME}/.local
# export LD_LIBRARY_PRELOAD=${DIR}/lib
# ========================

# Download the tarball
git clone https://github.com/htop-dev/htop

# Configuration, create make file
cd htop
./autogen.sh
./configure\ --prefix=$HOME/.local

# Compile
make -j 48

# Installation
make install

# remove the source code
cd ${HOME} && rm -rf ${HOME}/tmp/htop