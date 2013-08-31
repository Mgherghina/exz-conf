GET CODE
========
.. code-block:: sh

    $ cd /path/to/work
    $ git clone https://github.com/jaypei/exz_conf.git
    $ cd exz_conf
    $ git submodule init
    $ git submodule update


VIM CONFIG
==========

install
-------
.. code-block:: sh

    $ ln -s /path/to/work/exz_conf/vimconf/_vimrc ~/.vimrc
    $ ln -s /path/to/work/exz_conf/vimconf/_gvimrc ~/.gvimrc
    $ ln -s /path/to/work/exz_conf/vimconf/vimfiles ~/.vim

updating
--------
.. code-block:: sh

    $ cd ~/.vim
    $ git pull --rebase; git submodule update
    $ cd -

usage
-----
- ``回车`` 等同于 ``:`` (normal)
- ``空格`` 等同于 ``/``, 搜索模式 (normal)
- ``0`` 等同于 ``^`` ，到行首字母前 (noarmal)
- ``Q`` 关闭文件 (normal)

- ``F8`` or ``Shift+F8`` VimWiki
- ``F11`` or ``Shift+F11`` tag list (tagbar)
- ``F12`` or ``Shift+F12`` 目录树 (NERDTree)

leader key 改为 ``,`` .

- ``,j`` 当前行下移 (normal)
- ``,k`` 当前行上移 (normal)
- ``,pp`` 切换paste和nopaste模式


ARCHLINUX
=========

install
-------

.. code-block:: sh

    $ ln -s /path/to/work/exz_conf/archlinux/dotfiles/zshrc ~/.zshrc
    $ ln -s /path/to/work/exz_conf/oh-my-zsh ~/.oh-my-zsh
    $ ln -s /path/to/work/exz_conf/archlinux/dotfiles/Xdefaults ~/.Xdefaults
    $ ln -s /path/to/work/exz_conf/archlinux/dotfiles/xinitrc ~/.xinitrc

