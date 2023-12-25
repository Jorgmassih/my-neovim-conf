" Required:
call plug#begin()

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
" NERDTree
Plug 'preservim/nerdtree'

" Telescope Finder
" Telescope dependencies
" IMPORTANT: BurntSushi/ripgrep is a suggested dependency, checkout the
" documentation in order to install it in your operating system.
Plug 'nvim-lua/plenary.nvim' "Required
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

" Git Visulizer
Plug 'tanvirtin/vgit.nvim'

" Commentary tool
Plug 'tpope/vim-commentary'

" Show indent lines
Plug 'Yggdroot/indentLine'

" Select specified word accross the entire document
Plug 'majutsushi/tagbar'

" Automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'

" Visual
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " Color scheme
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multiple cursors
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Themes for vim-airline
Plug 'vim-scripts/CSApprox' " For 256 colors
Plug 'yasuhiroki/github-actions-yaml.vim' " Github Actions syntax highlight

" Tabs and buffers manager
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim' " Buffer bar

" Code facilities
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code completion
Plug 'easymotion/vim-easymotion' " Easy motion
Plug 'github/copilot.vim' " Github Copilot

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " Markdown preview


"" Vim-Session
Plug 'xolox/vim-misc' " Required
Plug 'xolox/vim-session' " Required

"" Snippets
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets' 

"" Terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

"*****************************************************************************
"" Custom bundles
"*****************************************************************************

" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'


" go
"" Go Lang Bundle
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}


" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'


" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'


" python
"" Python Bundle


"*****************************************************************************
"*****************************************************************************

"" Include user's extra bundle
if filereadable(expand("~/.rc.local.bundles"))
  source ~/.rc.local.bundles
endif

call plug#end()

" Required:
filetype plugin indent on
