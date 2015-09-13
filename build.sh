#!/bin/sh
WLP_VERSION=8.5.5.7
docker build -t vertigo/liberty-web:$WLP_VERSION .
