call plug#begin('~/.nvim/plugged')
  Plug '9mm/vim-closer'
  Plug 'tpope/vim-dispatch'
  Plug 'brglng/vim-im-select'
  Plug 'andymass/vim-matchup'
  Plug 'w0rp/ale',
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'easymotion/vim-easymotion'

  Plug 'glepnir/dashboard-nvim'
  Plug 'haorenW1025/completion-nvim'
  Plug 'nvim-treesitter/completion-treesitter'
  Plug 'steelsojka/completion-buffers'
  Plug 'kristijanhusak/completion-tags'
  Plug 'chaoren/vim-wordmotion'
  Plug 'liuchengxu/vista.vim'
  Plug 'rust-lang/rust.vim'

  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
  Plug 'plasticboy/vim-markdown'
  Plug 'mzlogin/vim-markdown-toc'

  Plug 'lervag/vimtex'
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'glepnir/zephyr-nvim'
  Plug 'tjdevries/colorbuddy.vim'
  Plug 'glepnir/galaxyline.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'lack-xu/vim-cool'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/lsp_extensions.nvim'
  Plug 'nvim-lua/lsp-status.nvim'
  Plug 'glepnir/indent-guides.nvim'
  Plug 'ajmwagar/vim-deus'
  ""Plug 'stsewd/gx-extended.vim'
  ""Plug 'RRethy/vim-hexokinase',
  ""Plug 'datwaft/bubbly.nvim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'kristijanhusak/defx-icons'
  Plug 'kristijanhusak/defx-git'
  Plug 'preservim/nerdcommenter',
  Plug 'tpope/vim-surround',
  Plug 'mattn/emmet-vim',
  Plug 'alvan/vim-closetag',
  Plug 'AndrewRadev/tagalong.vim',
  Plug 'numtostr/FTerm.nvim'
"  Plug 'neoclide/coc.nvim', {'branch': 'release'}
"  source ~/.config/nvim/lua/coc.vim
  Plug 'machakann/vim-highlightedyank',
  let g:highlightedyank_highlight_duration = 180
  "Plug 'kyazdani42/nvim-tree.lua',
  "source ~/.config/nvim/lua/nvim-tree.vim
  Plug 'dhruvasagar/vim-zoom'
  "Plug 'ghifarit53/tokyonight-vim'
  "Plug 'sainnhe/gruvbox-material'
call plug#end()

colorscheme zephyr

lua require 'eviline'
lua require 'telescop'
"lua require 'lspconfig'

source ~/.config/nvim/plugins/defx.vim
" vim-zoom
"map <M-w>m <C-w>m

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').help_tags()<cr>

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

let g:lsp_settings = {
\  'clangd': {'cmd': ['clang']},
\  'efm-langserver': {'disabled': v:false}
\}

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


let g:dashboard_default_executive ='telescope'
let g:dashboard_custom_shortcut={
  \ 'last_session'       : 'SPC s l',
  \ 'find_history'       : 'SPC f h',
  \ 'find_file'          : 'SPC f f',
  \ 'new_file'           : 'SPC c n',
  \ 'change_colorscheme' : 'SPC t c',
  \ 'find_word'          : 'SPC f a',
  \ 'book_marks'         : 'SPC f b',
  \ }
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>


nnoremap <silent><C-w>o :Vista!!<cr>

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▶ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▶ ", "├─▶ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista#renderer#enable_icon = 1
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
      \   "k":         "\uf71b",
      \   "a":         "\uf71b",
      \   "b":         "\uf71b",
      \   "s":         "\uf71b",
      \   "n":         "\uf71b",
      \   "o":         "\uf71b",
      \   "f":         "\uf794",
      \   "t":         "\uf318",
      \   "function":  "\uf794",
      \   "variables": "\uf031",
      \   "variable":  "\uf031",
      \   "autocommand groups":  "\ufb32",
      \   "augroup":   "\ufb32",
      \   "commands":  "\ufb32",
      \   "command":   "\ufb32",
      \   "maps":      "\uf279",
      \   "map":       "\uf279",
      \   "macros":    "\uf8a3",
      \   "modules":   "\uf668",
      \   "classes":   "\uf00b",
      \   "members":   "\ufb4c",
      \   "prototype": "\uf288",
      \   "class":     "\uf121",
      \   "c":         "\uf121",
      \   "struct":    "\uf318",
      \   "member":    "\uf02b",
      \   "section":   "\ufb9d",
      \   "key":       "\uf80a",
      \   "chapter":   "\uf76a",
      \   "subsection":"\uf76b",
      \   "subsubsection":"\uf76c",
      \   "subsubsubsection":"\uf76d",
      \   "subsubsubsubsection":"\uf76e",
      \   "alias": "\uf031",
      \   "tables": "\uf318",
      \   "structs":    "\uf318",
      \   "methods":  "\uf031",
      \   "record fields":"\uf02b",
      \  }
