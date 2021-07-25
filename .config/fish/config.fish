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
alias ci='git commit -m '
alias ph='git push'
alias pl='git pull'
