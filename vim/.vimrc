"Tabs
set tabstop=4 		"width of tab character 
set softtabstop=4	"Fine tunes the amount of white space to be added"
set shiftwidth=4	"Determines the amount of whitespace to add in normal mode: shift+>> or shift + <<
set expandtab		"When this option is enabled, vi will use spaces instead of tabs"

set number          "set line number"
set autoindent      "set autoindent: doen't interfare with other indents"
set incsearch       "incremental searching: search as soon as the typing begins"


"For YouCompleteMe plugin
set nocompatible    " be iMproved, required
filetype off        " required

set rtp+=~/.vim/bundle/Vundle.vim           "set the runtime path to include Vundle and initialize"
let g:vundle_default_git_proto = 'git'      "This option makes Vundle use git instead of https when building absolute URIs.
                                            "For example:Plugin 'sjl/gundo.vim' -> git@github.com:sjl/gundo.git
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'arcticicestudio/nord-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)

"Syntax highlighting
"for enabling 24-bit color terminal support inside Vim when using onedark.vim
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
syntax enable
" Lightline (Status Line) settings
let g:lightline = {'colorscheme': 'onedark',}
set laststatus=2
let g:lightline = {
		\ 'component': {
		\   'lineinfo': ' %3l:%-2v',
		\ },
		\ 'component_function': {
		\   'readonly': 'LightlineReadonly',
		\   'fugitive': 'LightlineFugitive'
		\ },
		\ 'separator': { 'left': '', 'right': '' },
		\ 'subseparator': { 'left': '', 'right': '' }
		\ }
	function! LightlineReadonly()
		return &readonly ? '' : ''
	endfunction
	function! LightlineFugitive()
		if exists('*FugitiveHead')
			let branch = FugitiveHead()
			return branch !=# '' ? ''.branch : ''
		endif
		return ''
	endfunction
"let g:lightline = {'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },}
"let g:lightline.separator={ 'left': '⮀', 'right': '⮂' }

" colorscheme (onedark.vim) settings
let g:onedark_hide_endofbuffer=1 " get rid of '~' sign
colorscheme onedark
"let g:airline_theme='onedark'
"let g:gruvbox_italic=1
"colorscheme gruvbox
"set background=dark         "Setting dark mode
"autocmd BufEnter * colorscheme gruvbox 
"autocmd BufEnter *.cpp colorscheme onedark 



" YouCompleteMe settings
" let g:ycm_clangd_binary_path="$HOME/bin/dotfiles/vim/bundle/YouCompleteMe/third_party/ycmd/third_party/clangd/output/bin"
" let g:ycm_clangd_uses_ycmd_caching = 0              "Let clangd fully control code completion"
"let g:ycm_clangd_binary_path = exepath("clangd")   "Use installed clangd, not YCM-bundled clangd which doesn't get updates."
" let g:ycm_global_ycm_extra_conf = '$HOME/bin/dotfiles/vim/bundle/ycm_extra_conf/.ycm_extra_conf.py'

"key remap
nnoremap ; :
"n means in normal mode 
"au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
inoremap <f9> <ESC>:w<CR>:!g++ -std=c++11 -pipe -O2 -lm -fomit-frame-pointer -g  % && ./a.out <CR>
nnoremap <f9> <ESC>:w<CR>:!g++ -std=c++11 -pipe -O2 -lm -fomit-frame-pointer -g  % && ./a.out <CR>
