# このファイルのあるディレクトリをカレントディレクトリに
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

echo "アップデートします..."

# このファイルのあるディレクトリをカレントディレクトリに
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# ファイルの更新処理
if [ "$1" = "" ]; then
    echo "ふぇぇ…ファイルをコピーして呼び出します"
    cp update.sh update_.sh

    echo "これ移行のログは nohup.out を参照してください"
    nohup ./update_.sh pull &
    rm -- "$0"
    exit

# ファイルを更新
elif [ "$1" = "pull" ]; then
    sleep 1
    echo "コンフリクト防止の為、ファイルの変更を削除します"
    git reset --hard HEAD
    echo "リポジトリ上にある最新の変更を適用します"
    git pull origin master
    # ./update.sh patch &
    rm -- "$0"
    echo "完了しました"
    read
    exit

fi

