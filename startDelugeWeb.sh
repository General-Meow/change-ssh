#!/bin/bash

deluged
deluge-web --fork

echo 'deluge is now available via http://localhost:8112'
echo 'to stop the deluged daemon type killall deluged'
