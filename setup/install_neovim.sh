cwd=`pwd`
cd ${HOME}/soft
git clone https://github.com/neovim/neovim
git checkout release-0.7
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
mkdir install
make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=`pwd`/install
make install
cd $cwd

