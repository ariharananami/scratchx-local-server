# このファイルのあるディレクトリをカレントディレクトリに
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

echo "アップデートします..."

# このファイルのあるディレクトリをカレントディレクトリに
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# ファイルの更新処理
if [ "$1" = "" ]; then
    echo "ファイルをコピーして呼び出し"
    cp update.sh update_.sh
    nohup ./update_.sh pull &
    rm -- "$0"
    exit

# ファイルを更新
elif [ "$1" = "pull" ]; then
    echo "update.shを更新します"
    sleep 1
    git pull origin master
    ./update.sh patch &
    rm -- "$0"
    echo "完了しました"
    read
    exit

fi

