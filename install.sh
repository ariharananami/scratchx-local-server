# このファイルのあるディレクトリをカレントディレクトリに
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# npmの確認
type npm || {
    echo "npmが実行できません。Node.jsをインストールしてください"
    exit 1
}

# http-serverのインストール
echo
type http-server || {
    echo "http-serverをインストール"
    npm install -g http-server
}

echo
git clone https://github.com/ariharananami/ev3_scratch.git

echo
git clone https://github.com/ariharananami/scratchx.git

echo
echo "完了しました。続いて launch.sh を起動し、実際に起動することを確かめてください"
read
