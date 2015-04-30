#!/bin/bash

curl -L github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

git clone git://github.com/tarruda/zsh-autosuggestions ~/.zsh-autosuggestions
bash ~/.zsh-autosuggestions/install

chsh -s /bin/zsh
