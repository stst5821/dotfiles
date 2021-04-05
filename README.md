# dotfiles
  
## brew bundleでfishやtmuxのインストールがエラーになる場合は、以下を試す。
https://qiita.com/toshow0083/items/810970306b6caf41b25c

## config.fishにtmuxを書くとsessions should be nested with care, unset $TMUX to forceというエラーが出る場合。
config.fishからtmuxの記述を削除し、iterm2の設定から、起動時にtmuxコマンドを入れて立ち上げるようにする。  
詳細は以下。
https://qiita.com/sawa-@github/items/da49c122197c5a46c554
