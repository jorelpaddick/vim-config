#!/bin/bash
VIMRC=~/.vimrc # Define location of users .vimrc file
VIMDIR=~/.vim  # Define location of users .vim directory
VIMOLD=~/.vim.old
VERSION='3.0'
echo "VERSION: $VERSION"


# Check to see if a vim configuration already exists
if [ -d $VIMDIR ] ; then
    echo "[WARNING] A vim configuration already exists!"
    read -p "[>] Would you like to save it? Y/n " save
    if [ "$save" != "n" ] && [ "$save" != "N" ] ; then
        # if the user wants to keep their previous configuration:
        # Save the old one here
        if [ ! -d $VIMOLD ] ; then # Check if .vim.old doesn't exist 
            # If not then create VIMOLD
            echo "[INFO] Creating backup directory"
            mkdir $VIMOLD
        fi
        echo "[INFO] Saving Previous .vimrc"
        cp $VIMRC $VIMOLD
        echo "[INFO] Saving Previous .vim/"
        cp -r $VIMDIR $VIMOLD
    fi
fi

# Begin installation
echo "[INFO] Beginning Installation..." 
echo "[INFO] Cleaning up..."
rm -rf $VIMRC
rm -rf $VIMDIR
echo "[INFO] Installing vimrc" 
cp vimrc $VIMRC
cp -R vim $VIMDIR
echo "[INFO] Installing plugins (this may take some time)"
git clone https://github.com/tomtom/tlib_vim.git \
        $VIMDIR/bundle/tlib_vim/
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git \
        $VIMDIR/bundle/vim-addon-mw-utils/
git clone https://github.com/garbas/vim-snipmate.git \
        $VIMDIR/bundle/vim-snipmate/
git clone https://github.com/jiangmiao/auto-pairs.git \
        $VIMDIR/bundle/auto-pairs/
git clone https://github.com/scrooloose/nerdcommenter.git \
        $VIMDIR/bundle/nerdcommenter/
git clone https://github.com/godlygeek/tabular.git \
        $VIMDIR/bundle/tabular/
git clone https://github.com/vim-syntastic/syntastic.git \
        $VIMDIR/bundle/vim-syntastic/
git clone https://github.com/tpope/vim-surround.git \
        $VIMDIR/bundle/vim-surround/
git clone https://github.com/dhruvasagar/vim-table-mode.git \
        $VIMDIR/bundle/vim-table-mode/
git clone https://github.com/scrooloose/nerdtree.git \
        $VIMDIR/bundle/nerdtree
git clone https://github.com/vim-scripts/SyntaxRange.git \
        $VIMDIR/bundle/SyntaxRange
git clone https://github.com/jceb/vim-orgmode.git \
        $VIMDIR/bundle/vim-orgmode
git clone https://github.com/keith/swift.vim.git \
        $VIMDIR/bundle/swift.vim
git clone https://github.com/wtfbbqhax/Snort-vim.git \
        $VIMDIR/bundle/Snort-vim
echo "[INFO] Finished. Vim is now ready."

