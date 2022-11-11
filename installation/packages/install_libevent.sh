# mkdir tmp_install
# cd tmp_install
wget https://github.com/libevent/libevent/releases/download/release-2.1.11-stable/libevent-2.1.11-stable.tar.gz
tar zxvf libevent-2.1.11-stable.tar.gz
cd libevent-2.1.11-stable/

# Step 1: Configure the software
# ./configure --help
./configure --prefix=$HOME/.local

# Step 2: Build the software and produces a customised Makefile
make -j 48

# Step 3: Install the software
make install

rm -rf libevent-2.1.11-stable.tar.gz
rm -rf libevent-2.1.11-stable