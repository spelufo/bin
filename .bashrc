export PS1=$'\n \[\x1b[33;1m\]\$\[\x1b[0m\] '

export GOPATH=~/code/go
export GO111MODULE=on
export HOUDINI_USER_PREF_DIR=~/.houdini17.5
export OPAM_SWITCH_PREFIX=~/.opam/default
export CAML_LD_LIBRARY_PATH=~/.opam/default/lib/stublibs:/usr/lib/ocaml/stublibs:/usr/lib/ocaml
export OCAML_TOPLEVEL_PATH=~/.opam/default/lib/toplevel

export PATH="~/bin:/usr/bin:$GOPATH/bin:$OPAM_SWITCH_PREFIX/bin"
export HISTCONTROL=ignoreboth
export EDITOR='subl -n -w'
export PAGER=less  # psql will use more otherwise

# Disable start and stop (^Q and ^S) and bind ^Q to intr (usually ^C).
stty start ''
stty stop ''
stty intr '^Q'

alias cd='cd -P'
alias ls='ls --color=auto'
alias l='ls --color=always --group-directories-first'
alias la='l -A'
alias ll='l -l'
alias lla='l -Ahl'
alias tree='tree --dirsfirst -C'
alias t='tree -L 1'
alias ta='tree -a -L 1'
alias tt='tree -L 2'
alias tta='tree -a -L 2'
alias ttt='tree -L 3'
alias ttta='tree -a -L 3'
alias less='less -FX'
alias re='grep -P'
alias du='du -h'
alias o=xdg-open
alias g=git
alias dev='./dev'

cdtemp() {
  cd $(mktemp -d)
}

mkcd() {
  mkdir -p "$1"
  cd "$1"
}

today() {
  date -I
}

wiki() {
	o "https://en.wikipedia.org/wiki/$@"
}
