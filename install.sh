#!/bin/sh
VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME/vimrc" ] && die "$VIMHOME/vimrc already exists."
[ -d "$VIMHOME" ] && die "$VIMHOME already exists."

cd ~
git clone https://github.com/rabit/dotvim.git "$VIMHOME"
mkdir -p "$VIMHOME"/bundle
git clone https://github.com/gmarik/vundle.git "$VIMHOME"/bundle/vundle
ln -sfn "$VIMHOME"/vimrc .vimrc
vim +BundleInstall +qall

ln -sfn "$VIMHOME"/bundle/xmledit/ftplugin/xml.vim "$VIMHOME"/bundle/xmledit/ftplugin/php.vim
ln -sfn "$VIMHOME"/bundle/xmledit/ftplugin/xml.vim "$VIMHOME"/bundle/xmledit/ftplugin/xhtml.vim

mkdir -p "$VIMHOME"/bundle/gtk-vim-syntax/after/syntax
cp -f "$VIMHOME"/bundle/gtk-vim-syntax/c.vim.example "$VIMHOME"/bundle/gtk-vim-syntax/after/syntax/c.vim

cd "$VIMHOME"/bundle/Command-T/ruby/command-t/ext/command-t
(ruby extconf.rb && make) || warn "Can't compile Command-T."

cd ~
mkdir -p backup/recover
