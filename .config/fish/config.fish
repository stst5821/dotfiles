set -x PATH $HOME/.anyenv/bin $PATH
# fishにanyenvを入れる
# シェルを立ち上げたときに読み込まれるファイルがある。.zrshとか
# fishだとconfig.fishというのが読み込まれる。
anyenv init - fish | source
tmux

# powerlinefontだと文字化けするので無効化する。
set -g theme_powerline_fonts no

# vi mode
fish_vi_key_bindings
bind p fish_clipboard_paste 