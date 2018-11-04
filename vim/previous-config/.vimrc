"Jorel Paddick's vimrc file
"Makes vim even more awesome!

syntax enable "Enable syntax processing
set tabstop=4 "Number of spaces per tab
set expandtab "All tabs are spaces
set number "Show line numbers
set shiftwidth=4 "Each indent using '>>' is 4 spaces 
set relativenumber "Make number relative to current line
set showcmd "show commands in bottom
set cursorline "highlight working line
set wildmenu "show the autocomplete commands
set showmatch "highlight matching braces
set incsearch "search as characters are entered
set hlsearch "Higlight matches
set foldenable "Enable folding
set mouse=a "enable the mouse for occasional lazyness
set ttymouse=xterm2
set autoindent "Automatic indentation
set smartindent "Context specific indentation
filetype plugin on "Allow plugins for specific files
set omnifunc=syntaxcomplete#Complete "Dynamic completion enabled
colorscheme molokai "Customised colour scheme

"Re-map control-w to control-\ 
"Do this because to delete the previous word
"normally you would press control-backspace in another
"editor, however vim uses control-w.
"We don't want control-w to become habit, because it closes
"windows in nearly every other program. Vim also does not allow
"for the binding of control-backspace, so this is the next best thing
imap <c-\> <c-w> 

"Headers are important for all source files
"Below are a series of automatic commands to create
"and maintain headers for c and java. 
autocmd bufnewfile *.c so ~/.vim/headers/c-style.txt
autocmd bufnewfile *.c exe "g/FILE NAME:.*/s//FILE NAME : " .expand("%")
autocmd bufnewfile *.c exe "g/CREATED:.*/s//CREATED: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.c execute "normal ma"
autocmd Bufwritepre,filewritepre *.c exe "g/MODIFIED:.*/s/MODIFIED:.*/MODIFIED : " .strftime("%c")
autocmd bufwritepost,filewritepost *.c execute "normal `a""`"

"This line loads all of the plugins located in ~/.vim/bundle
"It requires pathogen to work, but it's very simple to get working
execute pathogen#infect()
