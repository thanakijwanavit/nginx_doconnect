#!/bin/bash

docker container stop nginxdo
docker container rm -f nginxdo
docker image rm nginxdo
docker build -t nginxdo .
docker run --name nginxdo --network host -d nginxdo
