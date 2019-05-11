# Scratch X オフライン環境構築

オフライン状態でもScratch Xが使えるように、ローカルにサーバを建てるだけです。


## 導入手順

### 1. Git for Windowsのインストール

[Git公式HP](https://git-scm.com/)でWindows向けのインストーラをダウンロードし、インストールする。

### 2. Node.jsのインストール

[Node.js公式HP](<https://nodejs.org/ja/>)でWindows向けのインストーラ（最新版）をダウンロードし、インストールする。

### 3.  Git Bash上でコマンドを入力

Git Bashを開き、次のコマンド

```bash
$ cd ~/Desktop
$ git clone https://github.com/ariharananami/scratchx-local-util.git
```

を実行。2つ目の`git clone`をするとデスクトップに1つフォルダーができるはず。続けてGit Bashで、

```bash
$ ~/Desktop/scratchx-local-util/install.sh
```

を実行する。

