# Scratch X オフライン環境構築

オフライン状態でもScratch Xが使えるように、ローカルにサーバを建てるシェルスクリプトです。Scratch XでEV3を動かすために、EV3の拡張機能もローカルにダウンロードします。


## 導入手順

### 1. Git for Windowsのインストール

[Git公式HP](https://git-scm.com/)でWindows向けのインストーラをダウンロードし、インストールする。

### 2. Node.jsのインストール

[Node.js公式HP](https://nodejs.org/ja/)でWindows向けのインストーラ（最新版）をダウンロードし、インストールする。

### 3. Git Bash上でコマンドを入力

Git Bashを開き、次のコマンド

```bash
$ cd ~/Desktop
$ git clone https://github.com/ariharananami/scratchx-local-tool.git
```

を実行。2つ目の`git clone`をするとデスクトップに1つフォルダーができるはず。続けてGit Bashで、

```bash
$ ~/Desktop/scratchx-local-tool/install.sh
```

を実行する。

### 4. 試しに起動する

エラーが無ければ、以上で導入完了。下の手順に従い、確認を兼ねてローカルに導入したScratch Xを起動する。初回起動時、ファイアウォールの許可の必要がある点に注意。


## 起動手順

### launch.shを使った方法

scratchx-local-toolディレクトリにあるlaunch.shを起動すると、サーバが起動し、IEが開く。この方法では上手く起動しない場合があるので、そのときには手動での起動を試みる。

### 手動で起動する方法

Git Bashで

```bash
$ http-server -p 80 ~/Desktop/scratchx-local-tool
```

を実行すると、ローカルにサーバが立つ。ブラウザで`http://localhost/scratchx/?url=http://localhost/ev3_scratch/ev3_scratch.js`を開くと、Scratch X (EV3 Extension)を使える。

