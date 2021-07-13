" Plugin Install
call plug#begin('~/.nvim/plugged')
  Plug 'liuchengxu/space-vim-dark'
  Plug 'lack-xu/vim-cool'
  Plug 'mattn/emmet-vim'
  Plug 'dense-analysis/ale'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'andymass/vim-matchup'
  Plug 'easymotion/vim-easymotion'
  Plug 'skywind3000/vim-terminal-help'
  Plug 'fratajczak/one-monokai-vim'
  Plug 'brglng/vim-im-select'
  Plug 'stsewd/gx-extended.vim'
  Plug 'voldikss/vim-floaterm'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'kristijanhusak/defx-icons'
  Plug 'kristijanhusak/defx-git'
  Plug 'machakann/vim-highlightedyank',
  Plug 'dhruvasagar/vim-zoom'
  Plug 'tpope/vim-surround'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
  Plug 'plasticboy/vim-markdown'
  Plug 'mzlogin/vim-markdown-toc'
  Plug 'sheerun/vim-polyglot'
  Plug 'vim-latex/vim-latex', { 'for': 'tex' }
  Plug 'lervag/vimtex'
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
  Plug 'sainnhe/gruvbox-material'
  Plug 'morhetz/gruvbox'
  " lua-base Plugins
  Plug 'glepnir/indent-guides.nvim'
  Plug 'glepnir/galaxyline.nvim'
  Plug 'glepnir/zephyr-nvim'
  Plug 'preservim/nerdcommenter'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  "source ~/.config/nvim/lua/nvim-tree.vim
  "Plug 'numtostr/FTerm.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'ghifarit53/tokyonight-vim'
call plug#end()

" vim zoom
map <M-w>m <C-w>m
let g:tex_flavor='latex'
let g:highlightedyank_highlight_duration = 180
let g:livepreview_previewer = 'C:\\Users\\Ju-L\\AppData\\Local\\SumatraPDF\\SumatraPDF.exe'

" 阅读器相关的配置 包含正反向查找功能 仅供参考
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:vimtex_view_general_options
\ = '-reuse-instance -forward-search @tex @line @pdf'
\ . ' -inverse-search "' . exepath(v:progpath)
\ . ' --servername ' . v:servername
\ . ' --remote-send \"^<C-\^>^<C-n^>'
\ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
\ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
\ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
let g:tex_conceal='abdmg'

let g:im_select_default=1033
let g:terminal_shell = "pwsh.exe -nologo"
"let g:python3_host_prog = "C:\\Users\\Ju-L\\scoop\\apps\\python\\current\\python.exe"
let g:python3_host_prog = "C:\\Users\\Ju-L\\anaconda3\\python.exe"
"source ~/.config/nvim/lua/nvim-tree.vim
source C:\\Users\\Ju-L\\.config\\nvim\\lua\\defx.vim
"lua require 'zephyr'
lua require 'eviline'
let g:terminal_key = '<m-o>'
"set rtp+=~/.nvim/plugged/tree.nvim/
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

let g:floaterm_shell="pwsh.exe"
let g:floaterm_title=""
let g:floaterm_width=0.8
let g:floaterm_height=0.85
tmap <m-i> <C-\><C-n>:FloatermToggle<CR>
nmap <m-i> :FloatermToggle<cr>

set termguicolors
let g:tokyonight_style = 'storm'
let g:tokyonight_enable_italic = 1
let g:gruvbox_material_palette = 'original'
let g:gruvbox_material_background = 'medium'
colorscheme gruvbox-material
