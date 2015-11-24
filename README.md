让VIM有IDE的效果 实用的功能有

1. 目录树
2. 打开文件标签
3. 函数、类成员视图（Eclipse的outline功能）
4. 函数跳转
5. 自动补全
6. 查找、替换

版本要求

vim 版本>=7.3 低版本可以执行 Vim74Install.sh 安装

查看vim版本  vim --version

安装 步骤

git clone https://github.com/wming3/.vimToIDE.git  ~/.vim

cd ~/.vim

sh Install.sh


打开文件目录树   F2
打开文件标签,函数类成员视图  F3
帮助  F1 或 ?



新增插件

cd ~/.vim

git submodule add https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter

博客地址: http://blog.csdn.net/u010187139/article/details/50015339
参考地址 https://github.com/Shenyubao/openvims

http://wiki.baidu.com/pages/viewpage.action?pageId=137577394
