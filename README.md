# My Vim Configuration
 
## Why use this config?

## How to use this config:

1. Download this zip, or clone this repository on your system.
2. Run the included install script which will clone your current
    vim configuration install the new one and a set of plugins
    then copy your previous config into ~/.vim/previous-config.

3. Run vim.

That's it!

## Plugins Used in this Config

Plugins are managed by Pathogen which is super easy to use.
To add your own vim plugins simply simply clone their git repo or
unzip them in ~/.vim/bundle and pathogen will handle the rest.

for example to enable the nerdtree plugin:
    'cd ~/.vim/bundle'
    'git clone https://github.com/scrooloose/nerdtree.git'

That's it!

The plugins that this config will install by default are listed below:

### auto-pairs
    "insert or delete brackets, parens, quotes in pair"
    by Miao Jiang
    https://github.com/jiangmiao/auto-pairs

### nerdcommenter
    "Vim plugin for intensely orgasmic commenting" 
    by Caleb Maclennan
    https://github.com/scrooloose/nerdcommenter

### vim-syntastic
    "Syntax checking hacks for vim"
    by LCD 047
    https://github.com/vim-syntastic/syntastic

### vim-surround
    "surround.vim: quoting/parenthesizing made simple"
    by Adriaan Zonnenberg
    https://github.com/tpope/vim-surround
