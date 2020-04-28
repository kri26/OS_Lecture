#!/bin/bash

git clone https://gitlab.com/romanov73/example-jpa
./example-jpa/gradlew build
docker build -t mycontainer -f df .
systemctl stop postgresql-11
docker run mycontainer
