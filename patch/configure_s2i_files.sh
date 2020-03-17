#!/bin/sh
set -e

INSTANCE_DIR=$1
echo "Copying Config files from S2I build"
cp -v $AMQ_HOME/conf/* ${INSTANCE_DIR}/etc/
cp -v /tmp/src/patch/* $HOME/broker/etc
#echo "Configuring S2I run to start"
#sed -i 's/launch\.sh/launch\.sh start/' /usr/local/s2i/run

