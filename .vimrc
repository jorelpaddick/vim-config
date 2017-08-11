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
filetype plugin on

"Press j twice and this will exit insert mode.
"No more rasing your hand to press the escape key.
imap jj <Esc> 

colorscheme molokai "Customised colour scheme

"Re-map control-w to control-\ 
"Do this because to delete the previous word
"normally you would press control-backspace in another
"editor, however vim uses control-w.
"We don't want control-w to become habit, because it closes
"windows in nearly every other program. Vim also does not allow
"for the binding of control-backspace, so this is the next best thing
imap <c-\> <c-w> 

"LAXTEX MODE THINGS
autocmd BufReadPost,bufnewfile *.tex exe "set textwidth=78"
autocmd BufReadPost,bufnewfile *.tex exe "set spell"


"Headers are important for all source files
"Below are a series of automatic commands to create
"and maintain headers for c and java. 
autocmd bufnewfile *.c so ~/.vim/headers/c-style.txt
autocmd bufnewfile *.c exe "g/FILE NAME:.*/s//FILE NAME : " .expand("%")
autocmd bufnewfile *.c exe "g/CREATED:.*/s//CREATED: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.c execute "normal ma"
autocmd Bufwritepre,filewritepre *.c exe "g/MODIFIED:.*/s/MODIFIED:.*/MODIFIED : " .strftime("%c")
autocmd bufwritepost,filewritepost *.c execute "normal `a""`"
autocmd bufnewfile *.c exe "set colorcolumn=78"


"This header is for Java files:
autocmd bufnewfile *.java so ~/.vim/headers/c-style.txt
autocmd bufnewfile *.java exe "g/FILE NAME:.*/s//FILE NAME : " .expand("%")
autocmd bufnewfile *.java exe "g/CREATED:.*/s//CREATED: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *java execute "normal ma"
autocmd Bufwritepre,filewritepre *.java exe "g/MODIFIED:.*/s/MODIFIED:.*/MODIFIED : " .strftime("%c")
autocmd bufwritepost,filewritepost *.java execute "normal `a""`"

"This header is for c++ files:
autocmd bufnewfile *.cpp so ~/.vim/headers/c-style.txt
autocmd bufnewfile *.cpp exe "g/FILE NAME:.*/s//FILE NAME : " .expand("%")
autocmd bufnewfile *.cpp exe "g/CREATED:.*/s//CREATED: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *cpp execute "normal ma"
autocmd Bufwritepre,filewritepre *.cpp exe "g/MODIFIED:.*/s/MODIFIED:.*/MODIFIED : " .strftime("%c")
autocmd bufwritepost,filewritepost *.cpp execute "normal `a""`"

"This header is for h files:
autocmd bufnewfile *.h so ~/.vim/headers/c-style.txt
autocmd bufnewfile *.h exe "g/FILE NAME:.*/s//FILE NAME : " .expand("%")
autocmd bufnewfile *.h exe "g/CREATED:.*/s//CREATED: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *h execute "normal ma"
autocmd Bufwritepre,filewritepre *.h exe "g/MODIFIED:.*/s/MODIFIED:.*/MODIFIED : " .strftime("%c")
autocmd bufwritepost,filewritepost *.h execute "normal `a""`"

"This header is for hpp files:
autocmd bufnewfile *.hpp so ~/.vim/headers/c-style.txt
autocmd bufnewfile *.hpp exe "g/FILE NAME:.*/s//FILE NAME : " .expand("%")
autocmd bufnewfile *.hpp exe "g/CREATED:.*/s//CREATED: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *hpp execute "normal ma"
autocmd Bufwritepre,filewritepre *.hpp exe "g/MODIFIED:.*/s/MODIFIED:.*/MODIFIED : " .strftime("%c")
autocmd bufwritepost,filewritepost *.hpp execute "normal `a""`"

"For Python Files
autocmd bufnewfile *.py so ~/.vim/headers/py-style.txt
autocmd bufnewfile *.hpp exe "g/FILE :.*/s//FILE : " .expand("%")
autocmd bufnewfile *.hpp exe "g/CREATED:.*/s//CREATED: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *hpp execute "normal ma"
autocmd Bufwritepre,filewritepre *.hpp exe "g/MODIFIED:.*/s/MODIFIED:.*/MODIFIED : " .strftime("%c")
autocmd bufwritepost,filewritepost *.hpp execute "normal `a""`"
"This line loads all of the plugins located in ~/.vim/bundle
"It requires pathogen to work, but it's very simple to get working
execute pathogen#infect()
