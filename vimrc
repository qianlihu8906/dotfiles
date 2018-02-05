set nocompatible
set number
set shiftwidth=8
set tabstop=8
set hlsearch
set smartindent
set foldmethod=syntax
set nofoldenable
set completeopt=longest,menu
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
colorscheme molokai
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'
Plugin 'rhysd/vim-clang-format'

call vundle#end()
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif


nmap <C-@>y :YcmGenerateConfig<CR>
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>ss :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>gg :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>cc :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>tt :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>ee :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>ff :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>ii :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>dd :scs find d <C-R>=expand("<cword>")<CR><CR> 

map <C-n> :NERDTreeToggle<CR>
filetype plugin indent on

let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf=0
