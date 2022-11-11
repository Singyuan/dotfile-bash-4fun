# mkdir tmp_install
# cd tmp_install
wget https://invisible-mirror.net/archives/ncurses/ncurses-6.3.tar.gz
tar zxvf ncurses-6.3.tar.gz
cd ncurses-6.3/

# Step 1: Configure the software
# ./configure --help
./configure --prefix=$HOME/.local

# Step 2: Build the software and produces a customised Makefile
make -j 48

# Step 3: Install the software
make install

rm -rf ncurses-6.3.tar.gz
rm -rf ncurses-6.3