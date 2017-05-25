# Firstly Clean up the old vim config
mkdir previous-config
mv *.vim previous-config

# Now copy the new vim files over
cp .vimrc ~/.vimrc
cp .vim/ ~/.vim -r

# This config uses additional plugins which have links provided
# in the README.md file.

# Fetch those plugins from git
echo "Getting plugins..."
git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs/
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter/
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/vim-syntastic/
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround/
echo "Vim has been made awesome"
