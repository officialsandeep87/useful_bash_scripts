#!/bin/bash
if [ $(mount | grep --ignore-case 'appvg-currency' | wc -l) -eq 0 ]
then
	mount /dev/mapper/appvg-currency /currency/
	echo "Mounted Currency"
fi
if [ $(mount | grep --ignore-case 'appvg-storage' | wc -l) -eq 0 ]
then
	mount /dev/mapper/appvg-storage /storage/
	echo "Mounted Storage"
fi
