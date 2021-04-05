# dotfiles
  
## brew bundleでfishやtmuxのインストールがエラーになる場合は、以下を試す。
https://qiita.com/toshow0083/items/810970306b6caf41b25c

## config.fishにtmuxを書くとsessions should be nested with care, unset $TMUX to forceというエラーが出る場合。
config.fishからtmuxの記述を削除し、iterm2の設定から、起動時にtmuxコマンドを入れて立ち上げるようにする。  
詳細は以下。
https://qiita.com/sawa-@github/items/da49c122197c5a46c554

## oh-my-fish/theme-bobthefishテーマの導入方法

1)fisherインストール (fishをカスタマイズする為に)  
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish  
  
2)テーマを入れる  
fisher install oh-my-fish/theme-bobthefish  
  
3)powerlineをインストール  
git clone https://github.com/powerline/fonts.git  
  
4)フォントを使えるようにする  
cd fonts  
./install.sh  
  
5)フォント設定  
ターミナル->環境設定->プロファイル->テキスト->フォントを変更  
powerlineの文字が入っているフォントが複数あるが、見やすいのを選択する。
  
## Rictyフォントに変更する
  
以下の流れでインストール。  
https://qiita.com/iwaseasahi/items/c755ba1c26f94d2536f6
  
上記を含めてDotfilesを作らなきゃ意味ないんだけど、それは一旦保留で。
