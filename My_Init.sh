#!/bin/bash
mkdir --parents /currency
mkdir --parents /storage
mount --options=remount,rw /dev/mapper/appvg-currency /currency
cp /currency/conf/mount/* /etc/systemd/system/
cp /currency/bin/* /usr/local/bin/
systemctl --now --quiet enable storage.mount
systemctl --now --quiet enable currency.mount
