set -x PATH $HOME/.anyenv/bin $PATH
set -x PATH $HOME/.nodebrew/current/bin $PATH
set PATH /usr/local/bin /usr/sbin $PATH

set -x PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)

# fishにanyenvを入れる
# シェルを立ち上げたときに読み込まれるファイルがある。.zrshとか
# fishだとconfig.fishというのが読み込まれる。

anyenv init - fish | source
# tmux

set -g theme_nerd_fonts yes

# powerlinefontだと文字化けするので無効化する。
set -g theme_powerline_fonts no

# コマンド実行時間の非表示
set -g theme_display_date no

# vi mode
fish_vi_key_bindings
bind p fish_clipboard_paste

# hubコマンドのalias設定
eval (hub alias -s)

# peco ctrl+rで検索
function fish_user_key_bindings
  bind \cr peco_select_history
end

# Github alias
alias st='git status'
alias ad='git add'
alias ci='git commit -m'
alias ph='git push'
alias co='git checkout'
alias cb='git checkout -b'
alias br='git branch'
alias pl='git pull'
alias gb='git browse'
alias gc='git compare'
alias gs='git status'
alias gd='git diff'

#tmux alias
alias ta='tmux a -t'
alias tl='tmux ls'
alias tn='tmux new -s'

# Other alias
alias vs='code .'
alias d='cd ~/Documents'
alias .='cd ..'
alias nr='npm run'
alias l='ls -la'
alias t='tig'
alias m='make'
alias fi='vi ~/.config/fish/config.fish'
alias reb='exec $SHELL -l'
