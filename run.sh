#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <external-ip> <node-port> <image-path>"
  exit 1
fi

EXTERNAL_IP=$1
NODE_PORT=$2
IMAGE_PATH=$3

echo "Uploading $IMAGE_PATH to http://$EXTERNAL_IP:$NODE_PORT/upload ..."
curl -X POST -F "file=@$IMAGE_PATH" http://$EXTERNAL_IP:$NODE_PORT/upload --output detected_image.jpg
echo "Detection result saved as detected_image.jpg"
