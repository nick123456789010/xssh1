#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token:2VTiAk0b9Pk0fH624feu1eCfpGX_4sBzXG29uaxnuNdRmz6gU"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
