#!/bin/bash
df -h | grep /srv/store
retval=$?
sleep 3m
if [ $retval -ne 0 ]; then
    echo "Mount is fine"
else 
    echo "need to execute Mount manager scripts"
fi
