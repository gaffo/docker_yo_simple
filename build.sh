#! /bin/bash

# bootstrap the image

if ! docker images | grep u1210_yo_simple
then
	echo "Defaulting u1210_yo_simple to u1210_nodebase"
	docker tag u1210_nodebase u1210_yo_simple
fi

docker build -t u1210_yo_simple .