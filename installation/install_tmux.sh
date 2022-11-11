# mkdir tmp_install
# cd tmp_install

# add the following command in .bashrc
# export PKG_CONFIG_PATH=$HOME/.local/lib/pkgconfig:$PKG_CONFIG_PATH
# export LD_LIBRARY_PATH=$HOME/.local/lib:$LD_LIBRARY_PATH
# source ~/.bashrc

wget https://github.com/tmux/tmux/releases/download/3.2a/tmux-3.2a.tar.gz
tar zxvf tmux-3.2a.tar.gz
cd tmux-3.2a/

# Step 1: Configure the software
# ./configure --help
./configure --prefix=$HOME/.local

# Step 2: Build the software and produces a customised Makefile
make -j 48

# Step 3: Install the software
make install

rm -rf tmux-3.2a.tar.gz
rm -rf tmux-3.2a