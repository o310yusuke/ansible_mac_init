# ANSIBLEを使ってMacの環境構築（初期構築）

## 目的
Macで開発を行うために、いろいろなツールを入れてみたけど、下記の点が自分でもわからなくなってきた。
そのため、振り返りができるように、各ツールのインストールをコード化してみた。
（もちろん、Ansibleの勉強のためにも）

- なんの開発の勉強のためにインストールしたのか
- どのパッケージ管理ツールを使ってインストールしたのか

## 前提
Xcodeは、AppStoreからインストールされていることを前提とします。
また、AppStoreを使ってインストールしたアプリは対象外とします。
（できるのであれば、やりたいけど、そこまで調べられていない。。。）

## ディレクトリ構成とその目的
- README.md : 本ファイル
- 00_install_homebrew.sh : これをインストールしないと始まらないのもの
- 01_inventory
- 01_setup.yml
- 02_roles
    - homebrew : homebrewを使ってインストールするCLIツール系
    - homebrew_cask : homebrewを使っていインストールするGUIツール系
    - vscode_extenstion : vscodeにインストールする拡張機能


## 参考サイト
- https://rightcode.co.jp/blog/information-technology/ansible-mac-environment-setup
- https://qiita.com/kohbis/items/c12281805f9f9f59600d
