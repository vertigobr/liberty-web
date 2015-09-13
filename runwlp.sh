#!/bin/sh
WLP_VERSION=8.5.5.7
docker run --rm -ti -p 9080:9080 vertigo/liberty-web:$WLP_VERSION
