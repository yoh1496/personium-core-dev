PS1=$(echo $PS1 | sed -E 's/(.*\\w)(.*)/\1\\[\\033[01;31m\\] $(__git_ps1 "(%s)")\2 /')