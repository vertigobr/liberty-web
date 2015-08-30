#!/bin/sh
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
#echo "ENVBASH=$ENVBASH"
docker run --rm -ti -p 9080:9080 vertigo/liberty-web:latest $ENVBASH ${@:2}
