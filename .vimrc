" Uses Vundle as a package manager. Install via
"   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" Required for Vundle.
set nocompatible  
filetype off

" Initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle. This is required.
Plugin 'VundleVim/Vundle.vim'

" For making things look pretty.
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline'
Plugin 'edkolev/tmuxline.vim'

" Auto-completion.
Plugin 'ycm-core/YouCompleteMe'

" Auto-formatting.
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'kdheepak/JuliaFormatter.vim'  " For Julia.

" Tags.
Plugin 'majutsushi/tagbar'

" Interacting with git.
Plugin 'tpope/vim-fugitive'

" Code folding.
Plugin 'pseewald/vim-anyfold'

" Faster movement.
Plugin 'easymotion/vim-easymotion'

" Comments.
" Plugin 'preservim/nerdcommenter'
Plugin 'tpope/vim-commentary'

" Julia
Plugin 'JuliaEditorSupport/julia-vim' 

" All Plugins must be added before the following line.
call vundle#end()            " Required for Vundle.
filetype plugin indent on    " Required for Vundle.

" General settings.
filetype plugin on
syntax on
set number
set laststatus=2
set autochdir
set shiftwidth=2
set tabstop=2

" Using tabs.
nnoremap <C-J> :tabprevious<CR>
nnoremap <C-K> :tabnext<CR>
nnoremap <C-H> :tabedit  

" Use the PaperColor theme.
set t_Co=256
set background=dark
colorscheme PaperColor

" Configure airline.
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Configure the Google auto-formatter.
augroup autoformat_settings
  autocmd FileType c,cpp,cuda AutoFormatBuffer clang-format
  autocmd FileType python AutoFormatBuffer yapf
augroup END
nnoremap <C-L> :FormatCode<CR>

" Configure tagbar.
" TODO: in-order, and always display the tagbar (at least let's give this a try).
nmap <C-P> :TagbarToggle<CR>
let g:tagbar_sort = 0
set updatetime=100  " Make things update faster.

" Configure anyfold.
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=0

" Configure easymotion.
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

