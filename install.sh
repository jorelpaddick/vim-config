#!/bin/bash
VIMRC=~/.vimrc # Define location of users .vimrc file
VIMDIR=~/.vim  # Define location of users .vim directory
VIMOLD=~/.vim.old


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

# Firstly Clean up the old vim config
#Backing it up
#mkdir previous-config
#mv ~/.vim* previous-config

#Delete the old files
#rm -rf ~/.vim
#rm -rf ~/.vimrc

# Now copy the new vim files over
#cp .vimrc ~/.vimrc
#cp -R .vim ~/.vim
#mv previous-config ~/.vim/
#If for some random reason there is an error then clean up.
#rm -rf previous-config

# This config uses additional plugins which have links provided
# in the README.md file.

# Fetch those plugins from git
#echo "Getting plugins..."
#git clone https://github.com/tomtom/tlib_vim.git ~/.vim/bundle/tlib_vim/
#git clone https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.vim/bundle/vim-addon-mw-utils/
#git clone https://github.com/garbas/vim-snipmate.git ~/.vim/bundle/vim-snipmate/
#git clone https://github.com/honza/vim-snippets.git ~/.vim/bundle/vim-snippets/

#git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs/
#git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter/
#git clone https://github.com/godlygeek/tabular.git ~/.vim/bundle/tabular/
#git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/vim-syntastic/
#git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround/
#git clone https://github.com/dhruvasagar/vim-table-mode.git ~/.vim/bundle/vim-table-mode/
#echo "Vim has been made awesome"
