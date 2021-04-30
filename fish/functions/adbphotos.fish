function adbphotos
 set homels (/usr/bin/ls -1 ~/ | grep IMG)
 adb shell ls -1 sdcard/DCIM/Camera | grep IMG | tac | awk '{if ($1~'(date +"%Y%m%d")' && "'"$homels"'"!~$1) {print $1}}' | xargs -I {} adb pull sdcard/DCIM/Camera/{}
end
