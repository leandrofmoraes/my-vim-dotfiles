" === ATALHOS DE TECLADO ===
let mapleader = ","
let g:mapleader = ","

"easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Inicio da área de plugins
call plug#begin('~/.vim/plugged')
"Após abrir o vim, use :PlugInstall para instalar os plugins após adicionar
"PlugUpdate [name ...] [#threads]	Instala ou atualiza  plugins
"PlugClean[!] Remove unlisted plugins (bang version will clean without prompt)
"PlugUpgrade Upgrade vim-plug itself
"PlugStatus	Check the status of plugins

" === INTEGRAÇÃO COM GIT ===
Plug 'tpope/vim-fugitive'
let g:airline_enable_branch = 1

" === INTEGRAÇÃO COM GIT ===
Plug 'tpope/vim-fugitive'
let g:airline_enable_branch = 1

" === AUTO-COMPLETE ===
Plug 'tpope/vim-surround'

""set nocompatible
"Colorir palavras chave
""syntax on
Plug 'sheerun/vim-polyglot'

" === SYNTASTIC ===
Plug 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Para configurar o Syntastic para carregar erros automaticamente na lista de locais
let g:syntastic_always_populate_loc_list = 1

"Por padrão, o Syntastic verifica se há erros sempre que você salva o arquivo. Para desativar isso remova o comentário da linha abaixo
""let g:syntastic_check_on_wq = 0

"Por padrão, o Syntastic usa símbolos de seta para indicar a linha com erro.
"Para mudar isso, remova os comentários das linhas abaixo
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" === AUTO-PAIRS ===
Plug 'jiangmiao/auto-pairs'
"fly mode
""let g:AutoPairsFlyMode = 1

Plug 'dracula/vim', { 'as': 'dracula' }

" === NERDTree ===
Plug 'preservim/nerdtree'
""Plug 'ryanoasis/vim-devicons'

"mudar as setas padrão
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Atalhos de teclado para o NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Inicie o NERDTree quando o Vim for iniciado sem argumentos de arquivo.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"Inicie o NERDTree quando o Vim iniciar com um argumento de diretório
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

"Inicie o NERDTree, a menos que um arquivo ou sessão seja especificado, por exemplo. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

"Abrir NerdTree por padrão à direita
let g:NERDTreeWinPos = "right"

"Abrir o NERDTree existente em cada nova guia.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Sair do Vim se NERDTree for a única janela restante na única guia.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Inicie o NERDTree e coloque o cursor de volta na outra janela. 
""autocmd VimEnter * NERDTree | wincmd p


"Vim Airline
Plug 'vim-airline/vim-airline'
"Airline Themes
Plug 'vim-airline/vim-airline-themes'
"let g:airline_theme = 'night_owl'
let g:airline_theme = 'dracula'

"Colorir a divisória vertical
""set fillchars=vert:\ , 
""set fillchars=vert:\ ,fold:-,diff:-
highlight VertSplit cterm=NONE guibg=#000819 guifg=#000819 ctermbg=NONE ctermfg=0
""set statusline=-        " hide file name in statusline
""set fillchars=stl:-     " fill active window's statusline with -
""set fillchars+=stlnc:-  " also fill inactive windows
""set fillchars+=vert:\|  " add a bar for vertical splits
""let g:gruvbox_vert_split='bg1'


" powerline symbols
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = ' ☰ '
let g:airline_symbols.dirty='⚡'

"Linha de guia mais inteligente
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" === MULTIPLOS CURSORES ===
Plug 'terryma/vim-multiple-cursors'

" Fim da área de plugins
call plug#end()

"=== SET LEADER KEY ===
""set mapleader="\<space>"

"Seleciona o tipo de caractere
set encoding=UTF-8

"Enumerar linhas
set number
""set nu!

"Exibe em qual linha está o cursor
""set cursorline

filetype plugin indent on

"Colorir palavras chave
""syntax on

"Configura a quantidade de espaço de tabulação
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab
set ignorecase

""set paste

set ai
set ic
set ve=all
set backspace=indent,eol,start 
autocmd Filetype gitcommit setlocal spell textwidth=72
   
"Adiciona um menu suspenso de ajuda ao pressionar Tab
set wildmenu

"Exige uma confirmação interativa ao sair do vim sem salvar
"set confirm
 
"Permite carregar arquivos na memória
set hidden

"Exibe o nome do arquivo na barra de titulo
set title

" Salva automaticamente a cada edição
""set autowrite

" Exibe o casamento de {}, [], ()
set showmatch
        
"Usar o mouse
set mouse=a

" Feedback de busca
set incsearch

" Destacar resultados da busca
""set hlsearch

function! NeatFoldText()
	let line = getline(v:foldstart)

	let nucolwidth = &fdc + &number * &numberwidth
	let windowwidth = winwidth(0) - nucolwidth - 3
	let foldedlinecount = v:foldend - v:foldstart

	" expand tabs into spaces
	let onetab = strpart('          ', 0, &tabstop)
	let line = substitute(line, '\t', onetab, 'g')

	let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
	let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
	return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction

set foldtext=NeatFoldText()
