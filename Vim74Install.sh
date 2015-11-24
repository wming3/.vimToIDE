#!/bin/bash
# By Shenyubao <ssybb1988@gmail.com>

VIM_VERSION=$(vim --version | grep IMproved | awk '{print $5}')
if [ $VIM_VERSION = "7.4" ];then
    echo "this is already vim 7.4"
    exit;
fi

confirm() {
  echo "Press RETURN to install vim7.4 , or ^C to cancel.";
  read -e ignored
}

if [ ! -d ~/vimsrc ];then
    mkdir ~/vimsrc
fi

cd ~/vimsrc
if [ ! -d ~/vimsrc/vim74 ];then
    wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2 
    tar -xvf vim-7.4.tar.bz2 
fi

cd vim74
./configure --enable-multibyte \--with-features=huge \--disable-selinux  
make && make install

if [[ $? -ne 0 ]];then
    echo "Fail in install. Plase Check the script"
fi

mv /usr/bin/vim /usr/bin/vim.bac
ln -s /usr/local/bin/vim /usr/bin/vim
rm -rf ~/vimsrc

echo "OK,Install Finished"
