#vimToIDE

##目标
    让VIM有IDE的效果
    
    1. 目录树
    2. 打开文件标签
    3. 函数、类成员视图（Eclipse的outline功能）
    4. 函数跳转
    5. 自动补全
    6. 查找、替换
    
###效果图
 ![image](https://github.com/wming3/.vimToIDE/tree/master/image/vim_view.png)
 
 如果加载不出来, [请参考我的博客](http://blog.csdn.net/u010187139/article/details/50015339)上的图片
##安装
###版本要求

    vim 版本>=7.3 低版本可以执行 Vim74Install.sh 安装
    查看vim版本  vim --version

###安装 步骤

    git clone https://github.com/wming3/.vimToIDE.git  ~/.vim

    cd ~/.vim

    sh Install.sh

###新增插件

    cd ~/.vim

    git submodule add https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter

####删除Vim插件, 使用如下命令

        1.git rm -r --cache bundle/nerdcommenter
        2.rm -rf bundle/nerdcommenter
        3.修改.gitmodules ,删除相关节点

##插件使用说明
   
####默认配置

    <leader> = ,   :下文中的<leader> 用此替代符
    <C + c> : 关闭当前buff
    <C + n> : 打开下一个buff
    <C + b> : 打开前一个buff
    
    <C + r> : 相对行号/绝对行号的控制
    <C + h> : 文件时光机功能
####Conque-Shell 

    在Vim中打开Terminal的插件
    :ConqueTerm bash 打开终端
    :ConqueTermSplit 分隔窗口方式打开终端 
    
####OmniCppComplete
    
    C/C++代码自动补全增强插件

####checksyntax_vim

    语法检查插件
    F5 启用检查(文件保存后自动检查)
    
####cscope
    
    语法标签生成,代码阅读插件
    F6 生成当前目录的语法标签 (只跟踪 .php .phtml .java .c .cpp .h)文件
    <C + ]> 跳转定义
    <C + t> 跳转上一步
    <C + g> g: 查找函数定义
    <C + g> d: 查找函数调用
    <C + g> s: 查找所有出现处
    <C + g> c: 查找调用记录
    
####easygrep

    关键字查找插件
    <leader>vv 查找关键字
    
####file-line
####fuzzyfinder
    
    文件查找插件(支持通配符) 
    F4 开启
    
####nerdcommenter

    用来给代码添加注释
    <leader>cc 添加注释
    <leader>cu 取消注释
    <leader>c<space> 添加/取消 注释
    <leader>cm 段注释
    <leader>cs 漂亮的注释
    
####nerdtree
    
    ?  打开帮助
    B  显示/关闭书签
    D  删除书签
    F5 给当前目录创建标签
    R  更新当前目录
    t  在新标签中打开当前文件
    F1 帮助  
    F2 打开文件目录树
	F3 打开文件标签,函数类成员视图  
    
####snipMate
    
    代码块生成
    for/foreach/class/func + tab 生成代码段
    语法文件: ~/.vim/snippets/*.snippets
    
####solarized
    
    默认模板自带的管理插件
####space
####supertab
    
    代码自动提醒插件
####tabular

    文本对齐插件
    :Tab /=  按等号对齐
####tagbar
    
    标签阅读插件(兼容面向对象语言)
    F3 显示/关闭
####vcscommand
    
    版本控制插件(支持Git,Svn)
    :VCSAdd 向源添加文件
    :VCSAnnotate 在每行代码前显示提交者
    :VCSCommit 提交对当前文件的更改
    :VCSDelete 在源中删除当前文件
    :VCSLog 显示文件的历史更改情况
    :VCSRevert 回滚当前文件到源中历史最新版本
    :VCSReview 查看当前文件的某个特定版本
    :VCSStatus 查看当前文件的版本信息
    :VCSUnlock 撤销对当前文件的锁定
    :VCSUpdate 更新当前文件到源中版本
    :VCSVimDiff 查看当前文件与历史版本的差别

####vim-l9
####vim-powerline
    
    状态栏增强插件


博客地址: http://blog.csdn.net/u010187139/article/details/50015339

参考地址: http://wiki.baidu.com/pages/viewpage.action?pageId=137577394
