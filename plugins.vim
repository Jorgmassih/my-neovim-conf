" Required:
call plug#begin()

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
" NERDTree
Plug 'preservim/nerdtree'

" Commentary tool
Plug 'tpope/vim-commentary'

" Show indent lines
Plug 'Yggdroot/indentLine'

" Select specified word accross the entire document
Plug 'majutsushi/tagbar'

" Automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'

" Visual
Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ryanoasis/vim-devicons'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bagrat/vim-buffet'
Plug 'vim-scripts/CSApprox'

" Code facilities
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'easymotion/vim-easymotion'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }


"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

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

" Plugin inspired in Gitlens for VsCode
Plug 'APZelos/blamer.nvim'



"*****************************************************************************
"*****************************************************************************

"" Include user's extra bundle
if filereadable(expand("~/.rc.local.bundles"))
  source ~/.rc.local.bundles
endif

call plug#end()

" Required:
filetype plugin indent on
