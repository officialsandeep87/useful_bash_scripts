#!/bin/bash
if [ $(mount | grep --ignore-case 'appvg-currency' | wc -l) -eq 0 ]
then
	mount /dev/mapper/appvg-currency /currency/
	echo "Mounted Currency"
	script --append --flush --quiet /currency/log/$(date +%m%d%Y%H%M).log
else
	script --append --flush --quiet /currency/log/$(date +%m%d%Y%H%M).log
fi
