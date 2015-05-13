apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "TeleService" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the interface "registerForNetworkLocked" with "registerForPersoLocked""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#registerForNetworkLocked#registerForPersoLocked#g'  
fi
