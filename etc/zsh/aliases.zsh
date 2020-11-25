## Ⅰ
alias: g 'git'
alias: m 'vman'
alias: j 'just'
alias: f 'fd'
alias: v 'vim-fzf'

## Ⅱ
alias: .. 'cd ..'
alias: .j 'j --justfile ~/.justfile --working-directory ~'
alias: a1 'alias-list 1'
alias: a2 'alias-list 2'
alias: al 'alias-list 2'
alias: ea 'vim ~/.zsh/aliases.zsh'
alias: ee 'vim ~/.vimrc'
alias: es 'vim ~/.zshrc'
alias: et 'vim  ~/.config/alacritty/alacritty.yml'
alias: ev 'vim ~/.vimrc'
alias: em 'vim ~/.mutt/muttrc'
alias: gd 'cd "$(tail -n1 ~/.savedir)"'
alias: kb 'keybase'
alias: kc 'keybase-chat'
alias: la 'exa --across --all'
alias: ll 'exa --long --binary --group --git'
alias: ls 'exa'
alias: p1 'ping 1.1.1.1'
alias: p6 'ping6 2606:4700:4700::1111'
alias: p8 'ping 8.8.8.8'
alias: pw 'curl https://rodarmor.com'
alias: tp 'term --command ssh pair@pair.rodarmor.com'
alias: tb 'nc termbin.com 9999'
alias: zf 'zsh-edit-function'

## Ⅲ: misc
alias: how 'howdoi -a'
alias: psg 'ps aux | grep'
alias: rwd 'cd `pwd -P`'

## Ⅲ: git
alias: gaa 'git commit --amend --all'
alias: gac 'git commit --amend'
alias: gad 'git add'
alias: gap 'git add -p'
alias: gba 'git branch --all'
alias: gbd 'git branch --delete'
alias: gbr 'git branch --verbose'
alias: gca 'git commit --all'
alias: gcb 'git checkout -b'
alias: gcf 'git config --local --unset rodarmor.slow true'
alias: gco 'git checkout'
alias: gcp 'git commit --patch'
alias: gcs 'git config --local --add rodarmor.slow true'
alias: gct 'git commit'
alias: gdc 'git diff --cached'
alias: gdi 'git diff --cached'
alias: gif 'git info'
alias: glg 'git lg'
alias: gls 'git log --all --pretty=tformat:%H -n 1 --grep'
alias: gpf 'git push -f'
alias: gpl 'git plane'
alias: grb 'git rebase'
alias: gri 'git rebase -i'
alias: grm 'git rm'
alias: grs 'git restore'
alias: gst 'git info'
alias: gss 'git status --short'
alias: gsu 'git submodule update --init --recursive'
alias: gsw 'git switch'

## Ⅳ
alias: Kill 'kill -9'
alias: cd.. 'cd ..'
alias: diff 'colordiff'
alias: grep 'grep --color=auto'
alias: help 'run-help'
alias: mutt 'neomutt'
alias: pare 'tr -s "[:blank:]" " " | cut -d " " -f'
alias: port 'port -vuRc'
alias: post 'cd ~/src/blog && just post'
alias: sane 'stty sane'

## Ⅴ
alias: egrep 'egrep --color=auto'
alias: eject 'drutil tray eject'

## Ⅸ
alias: colortest '~/src/local/submodules/base16-shell/colortest'
alias: post-file 'cd ~/src/blog && just file'
