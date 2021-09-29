# dotfiles

## brew bundle で fish や tmux のインストールがエラーになる場合は、以下を試す。

https://qiita.com/toshow0083/items/810970306b6caf41b25c

## config.fish に tmux を書くと sessions should be nested with care, unset $TMUX to force というエラーが出る場合。

config.fish から tmux の記述を削除し、iterm2 の設定から、起動時に tmux コマンドを入れて立ち上げるようにする。  
詳細は以下。
https://qiita.com/sawa-@github/items/da49c122197c5a46c554

## oh-my-fish/theme-bobthefish テーマの導入方法

基本は、以下のREADMEの通りに進めればOK

https://github.com/oh-my-fish/theme-bobthefish

1. フォントのダウンロード

以下のフォントをダウンロード

https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/3270/Medium/complete/3270-Medium%20Nerd%20Font%20Complete.ttf

ダウンロードしたら、ファイルをダブルクリックで実行する。

別ウィンドウでフォントのサンプルが出るので、右下のインストールをクリック。

2. config.fishに追記

`set -g theme_nerd_fonts yes`

config.fishに追記しないと、itermやtmuxを再起動するたびに上記コマンドを打たないといけなくなる。

3. itermを再起動

これでテーマとアイコンが反映されているはず。

## dotfilesLink.sh で symbolicLink を貼る時の注意点

Link を貼る先にすでに同名の directory が存在していると、その directory の中にさらに同名の directory ができてしまう。
例：~/.config/karabiner/assets/assets
みたいになるので、この場合は、assets ディレクトリを消してから、再度、ln -fns コマンドを打つ。
