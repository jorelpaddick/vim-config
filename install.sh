rm -rf ~/.vim*
cp .vimrc ~/.vimrc
cp .vim/ ~/.vim -r
echo "Getting plugins..."
git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs/
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter/
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/vim-syntastic/
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround/
echo "Vim has been made awesome"
