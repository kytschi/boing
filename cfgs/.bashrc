mounted=$(df -h | grep /mnt/storage)
if [ -z "$mounted" ]; then
	losetup -o 1048576 /dev/loop0 /dev/mmcblk0
	mount -t affs -o offset=1048576 /dev/loop0 /mnt/storage
	clear
fi

if pidof -o %PPID -x "pulseaudio">/dev/null; then
        clear
else
        pulseaudio --start
fi


if pidof -o %PPID -x "startx">/dev/null; then
	clear
	boing
else
	startx
fi
