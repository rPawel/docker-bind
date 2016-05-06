#!/bin/bash
CUR_LOCALE=${CTNR_LOCALE:-"en_GB.UTF-8"}
echo "Setting locale: ${CUR_LOCALE}"
locale-gen ${CUR_LOCALE}
update-locale LANG=${CUR_LOCALE} LC_MESSAGES=POSIX

CUR_TIMEZONE=${CTNR_TIMEZONE:-"Europe/London"}
echo "Setting timezone: ${CUR_TIMEZONE}"
echo ${CUR_TIMEZONE} > /etc/timezone; dpkg-reconfigure --frontend noninteractive tzdata

