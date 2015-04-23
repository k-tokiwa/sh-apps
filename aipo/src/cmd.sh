#!/bin/bash
pushd /usr/local/aipo

pushd ./bin
./startup.sh
#./backup_handler.sh
popd

#rsync -av ./backup ./backup_host

popd

tail -f /usr/local/aipo/tomcat/logs/catalina.out
