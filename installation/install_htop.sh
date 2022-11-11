# mkdir tmp_install
# cd tmp_install

git clone https://github.com/htop-dev/htop
cd htop/

# Step 1: Configure the software
./autogen.sh
./configure --prefix=$HOME/.local

# Step 2: Build the software and produces a customised Makefile
make -j 48

# Step 3: Install the software
make install

rm -rf htop