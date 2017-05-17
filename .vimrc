syntax enable "Enable syntax processing
set tabstop=4 "Number of spaces per tab
set expandtab "All tabs are spaces
set shiftwidth=4
set number "Show line numbers
set relativenumber "Make number relative to current line
set showcmd "show commands in bottom
set cursorline "highlight working line
set wildmenu "show the autocomplete commands
set showmatch "highlight matching braces
set incsearch "search as characters are entered
set hlsearch "Higlight matches
set foldenable "Enable folding
set ttymouse=xterm2
set autoindent 
set smartindent
set mouse=a

colorscheme molokai

"Change the lines visually when they wrap over

imap <c-\> <c-w>

execute pathogen#infect()

