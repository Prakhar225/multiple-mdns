#!/bin/bash

trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT

MAIN_IP=$(hostname -I | cut -d' ' -f1)

while read p; do
  /usr/bin/avahi-publish -a "$p" -R "$MAIN_IP" &
done </root/mdns-aliases

while true; do sleep 10000; done
