" Resources & Links
" ----------------------
" * Vundle plugin manager: https://github.com/VundleVim/Vundle.vim#about
" * YouCompleteMe: https://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
" ** https://github.com/ycm-core/YouCompleteMe
" ----------------------
"
" ----------------------
"  YCM Configuration
" extra YCM configuration for C-family autocompletion
" " using:
" https://github.com/rasendubi/dotfiles/blob/master/.vim/.ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"	

" ----------------------
" Visual/minor tweaks
" Add line number to beginning of each line
set number
set hidden		" allow buffer to remain unsaved while not open in current window
set confirm		" confirm Save/Not Save setting for modified buffers

" ----------------------
" Vundle Configuration
set nocompatible                  " be iMproved, required
filetype off                      " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()
" ______________________
" Vundle Plugins
Plugin 'VundleVim/Vundle.vim'     " Let Vundle manage vundle
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" -----------------------
" C IDE Configuration
" https://www.alexeyshmalko.com/2014/using-vim-as-c-cpp-ide/

" Enable using local .vimrc files for project-specific configuration
set exrc
" Disables commands that write to file or execute shell commands
set secure

" Indentation (should be project-specific)
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Filetype detection
augroup project
  autocmd!
" doxygen: https://www.doxygen.nl/index.html
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

" Setting vim $PATH
" To be used with the `gf` command to open the file underneath the cursor; searching in PATH directories
let &path.="src/include,/usr/include/AL,"
"-----------------------
