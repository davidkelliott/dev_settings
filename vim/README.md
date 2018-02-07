Daves vim config files

Creat sym link to point .vimrc to git copy:

Windows:
C:\Users\Dave>mklink .vimrc .\git\vim\.vimrc
symbolic link created for .vimrc <<===>> .\git\vim\.vimrc

Linux:
ln -s ~/git/vim/.vimrc ~/.vimrc

For Gradle syntax install pathogen.vim - 
https://github.com/tpope/vim-pathogen

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

https://github.com/tfnico/vim-gradle
