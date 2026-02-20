#!/bin/bash
# setup_python2.7.sh – Install Python 2.7.18 from source on Ubuntu 22.04 / Linux Mint 22.x
set -e  # Exit immediately if a command exits with a non-zero status

# Check for supported OS (Ubuntu or Linux Mint)
if grep -qi "ubuntu" /etc/os-release || grep -qi "linuxmint" /etc/os-release; then
    echo "OS check passed. Continuing..."
else
    echo "This script is intended for Ubuntu or Linux Mint. Exiting."
    exit 1
fi

# Ensure sudo is available
if ! command -v sudo &> /dev/null; then
    echo "sudo is required but not installed. Exiting."
    exit 1
fi

# Install build dependencies
echo "Installing build dependencies..."
sudo apt update
sudo apt install -y wget build-essential libssl-dev zlib1g-dev libncurses5-dev \
    libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev \
    libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev

# Download Python 2.7.18 source
cd /tmp
echo "Downloading Python 2.7.18..."
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tar.xz
tar -xf Python-2.7.18.tar.xz
cd Python-2.7.18

# Configure and compile
echo "Configuring and compiling Python 2.7.18..."
./configure --enable-optimizations --prefix=/usr/local
make -j"$(nproc)"
sudo make install

# Install pip for Python 2
echo "Installing pip for Python 2..."
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
sudo python2.7 get-pip.py

# Clean up
cd /tmp
rm -rf Python-2.7.18*
rm -f get-pip.py

echo "Python 2.7 installation complete!"
echo "You can now run: python2.7 or python2"
echo "Pip for Python 2: pip2.7 or pip2"
