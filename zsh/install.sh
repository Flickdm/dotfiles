#!/bin/bash

curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh

source antigen.zsh

#curl -L github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

#git clone git://github.com/tarruda/zsh-autosuggestions ~/.zsh-autosuggestions
#bash ~/.zsh-autosuggestions/install

chsh -s /bin/zsh
