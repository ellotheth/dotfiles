alias ls='LC_COLLATE=C ls --color=auto --group-directories-first'
alias ll='ls -la'
alias diff='colordiff -u'
alias workoff='deactivate'
alias h='history |grep'
alias svi='sudo -E vi'
alias sgit='sudo -E git'
alias tunnel='ssh -D 42210 -f -C -q -N'
alias chbs='shuf /usr/share/dict/words |grep "^[^'"'"']\{5,\}$" |head -n4 |tr "\n" " "|sed '"'s/ $/\n/'"
