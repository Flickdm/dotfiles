# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# ------------------------ Bundles ----------------------------------------------------

cd ~/.vim/bundle && \

git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/duythinht/inori
git clone https://github.com/bling/vim-airline.git
git clone git://github.com/tpope/vim-fugitive.git && vim -u NONE -c "helptags vim-fugitive/doc" -c q
git clone https://github.com/jelera/vim-javascript-syntax.git ~/.vim/bundle/vim-javascript-syntax
git clone https://github.com/gmarik/Vundle.vim.git

# ---------------------------- COLORS ----------------------------------------------------

cd ~/.vim/ && mkdir colors/
cd ~/.vim/colors/ && \
curl https://raw.githubusercontent.com/duythinht/inori/master/colors/inori.vim >> inori.vim
chmod 777 inori.vim
curl https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim >> molokai.vim
chmod 777 molokai.vim

# ----------------------------- FONTS ------------------------------------------------------
cd $TMPDIR

git clone https://github.com/powerline/fonts.git
./fonts/install.sh
