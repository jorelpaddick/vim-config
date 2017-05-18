rm -rf ~/.vim*
cp .vimrc ~/.vimrc
cp .vim/ ~/.vim -r
echo "Getting plugins..."
git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/
echo "Vim has been made awesome"
