# Setup a red prompt for root and a normal one for users.
NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
if [ $(id -u) = 0 ]; then
        PS1="$NORMAL\h:$NORMAL\w$RED# $NORMAL"
else
        PS1="$NORMAL\h:$NORMAL\w$NORMAL \u\$ $NORMAL"
fi

alias ll='ls -lAF'

export GOPATH=/go
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

