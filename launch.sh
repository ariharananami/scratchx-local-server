SCRIPT_DIR="$(cd $(dirname $0); pwd)"       # このファイルのあるディレクトリ
PATH_TO_IE="C:\Program Files\internet explorer\iexplore.exe"
URL_TO_EXT="http://localhost/ev3_scratch/ev3_scratch.js"

cd $SCRIPT_DIR

echo
echo "サーバを起動するよ"
nohup http-server -p 80 . &
sleep 3

echo
echo "IEを開くよ"
"$PATH_TO_IE" "http://localhost/scratchx/index.html?url=$URL_TO_EXT"
echo
echo "ふぇぇ"
read
