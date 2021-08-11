set -x PATH $HOME/.anyenv/bin $PATH
# fishにanyenvを入れる
# シェルを立ち上げたときに読み込まれるファイルがある。.zrshとか
# fishだとconfig.fishというのが読み込まれる。

anyenv init - fish | source
# tmux

# powerlinefontだと文字化けするので無効化する。
set -g theme_powerline_fonts no

# コマンド実行時間の非表示
set -g theme_display_date no

# vi mode
fish_vi_key_bindings
bind p fish_clipboard_paste

set PATH /usr/local/bin /usr/sbin $PATH

alias ad='git add .'
alias ci='git commit -m'
alias ph='git push'
alias co='git checkout'
alias br='git branch'
alias pl='git pull'
alias vs='code .'
alias d='cd ~/Documents'
alias .='cd ..'
alias nr='npm run'
alias l='ls -la'
alias t='tig'
