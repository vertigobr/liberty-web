#!/bin/sh
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
WLP_VERSION=9.0.0-BETA
docker run --rm -ti -p 9080:9080 vertigo/liberty-web:$WLP_VERSION $ENVBASH ${@:2}
