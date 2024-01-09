#! /bin/bash
#======================================================================
#
# pp.sh - 
#
# Created by wwq on 2023/11/13
# Last Modified: 2023/11/13 15:35:32
#
#======================================================================

Program="$1"
PWD=`pwd`
echo "Will pull $Program "
echo "$PWD"
IP=127.0.0.1
DIR=127.0.0.1_dir
PROGRAM_DIR=dir
USERNAME=ww
PASSWORD=12345
HASH1=""
HASH2=""

while true
do
	if [ -e "$PWD/$Program" ]
	then
		echo "$Program exist"
		HASH1=`md5sum $Program | awk '{print $1}'`
		echo "HASH1:$HASH1"

		HASH2=$(smbclient //${IP}/${DIR}/ -U ${USERNAME}%${PASSWORD} -c "get ${PROGRAM_DIR}/$Program $Program"  > /dev/null 2>&1 && md5sum $Program | awk '{print $1}')
		echo "HASH2:$HASH2"
		if [ "$HASH1" = "$HASH2" ]
		then
			echo "run again"
			sleep 5
			echo "continue check"
			continue
		else
			echo "update $Program"
			break
		fi
	else
		echo "$Program not exist, Will get"
		HASH1=`smbclient //${IP}/${DIR}/ -U ${USERNAME}%${PASSWORD} -c "get ${PROGRAM_DIR}/$Program $Program"  > /dev/null 2>&1 && md5sum $Program | awk '{print $1}'`
		echo "$HASH1"
		break
	fi
done
