#!/bin/sh
WLP_VERSION=9.0.0-BETA
docker tag -f vertigo/liberty-web:$WLP_VERSION registry.vtg/vertigo/liberty-web:$WLP_VERSION
docker push registry.vtg/vertigo/liberty-web:$WLP_VERSION

