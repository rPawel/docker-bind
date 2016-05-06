#!/bin/bash
PERSISTENT_CONFIG_FOLDER="/root/.persistent-config"
PERSISTENT_IGNORED_CONFIG_FOLDER=$PERSISTENT_CONFIG_FOLDER/.ignore
VOLATILE_CONFIG_FOLDER="/"

mkdir /var/run/named
chown root:bind /var/run/named
chmod 775 /var/run/named

cp -ar ${PERSISTENT_CONFIG_FOLDER}/* ${VOLATILE_CONFIG_FOLDER}

# start container
exec /usr/bin/supervisord -c /etc/supervisord.conf
