#!/bin/sh

mkdir -p /opt/transprouter
touch /opt/transprouter/new /opt/transprouter/current

while true ; do
  inotifywait -e close_write /opt/transprouter/new && {
    echo ""
    echo "--------------------"
    echo "update detected"
    killall -15 current
    echo "service stopped"
    cp /opt/transprouter/new /opt/transprouter/current
    chmod +x /opt/transprouter/current
    echo "starting new version"
    nohup /opt/transprouter/current 2> /dev/stderr 1> /dev/stdout &
    echo "--------------------"
    echo ""
  }
done
