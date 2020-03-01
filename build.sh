#!/bin/sh

docker build -t polish-lang-api .
docker tag polish-lang-api:latest gingray/polish-lang-api:latest
docker push gingray/polish-lang-api:latest
