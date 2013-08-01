#! /bin/bash

# bootstrap the image

if ! docker images | grep u1210_yo_simple
then
	echo "Defaulting u1210_yo_simple to u1210_nodebase"
	docker tag u1210_nodebase u1210_yo_simple
fi

HOST_IP=`ifconfig docker0 |grep inet|head -1|sed 's/\:/ /'|awk '{print $3}'`

cat npmrc.template | sed "s/HOST_IP/$HOST_IP/" > npmrc

docker build -t u1210_yo_simple .