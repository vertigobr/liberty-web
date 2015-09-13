#!/bin/sh
WLP_VERSION=8.5.5.7
docker tag -f vertigo/liberty-web:$WLP_VERSION registry.vtg/vertigo/liberty-web:$WLP_VERSION
docker push registry.vtg/vertigo/liberty-web:$WLP_VERSION
