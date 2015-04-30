
function is_osx() {
    [[ "$OSTYPE" =~ ^darwin ]] || return 1;
}
  
function is_ubuntu() {
    [[ "$(cat /etc/issue 2> /dev/null)" =~ Ubuntu ]] || return 1;
}

