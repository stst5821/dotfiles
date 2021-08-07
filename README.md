# dotfiles

## brew bundle で fish や tmux のインストールがエラーになる場合は、以下を試す。

https://qiita.com/toshow0083/items/810970306b6caf41b25c

## config.fish に tmux を書くと sessions should be nested with care, unset $TMUX to force というエラーが出る場合。

config.fish から tmux の記述を削除し、iterm2 の設定から、起動時に tmux コマンドを入れて立ち上げるようにする。  
詳細は以下。
https://qiita.com/sawa-@github/items/da49c122197c5a46c554

## oh-my-fish/theme-bobthefish テーマの導入方法

1)fisher インストール (fish をカスタマイズする為に)  
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

2)テーマを入れる  
fisher install oh-my-fish/theme-bobthefish

3)powerline をインストール  
git clone https://github.com/powerline/fonts.git

4)フォントを使えるようにする  
cd fonts  
./install.sh

5)フォント設定  
ターミナル->環境設定->プロファイル->テキスト->フォントを変更  
powerline の文字が入っているフォントが複数あるが、見やすいのを選択する。

## Ricty フォントに変更する

以下の流れでインストール。  
https://qiita.com/iwaseasahi/items/c755ba1c26f94d2536f6

上記を含めて Dotfiles を作らなきゃ意味ないんだけど、それは一旦保留で。

## dotfilesLink.sh で symbolicLink を貼る時の注意点

Link を貼る先にすでに同名の directory が存在していると、その directory の中にさらに同名の directory ができてしまう。
例：~/.config/karabiner/assets/assets
みたいになるので、この場合は、assets ディレクトリを消してから、再度、ln -fns コマンドを打つ。
