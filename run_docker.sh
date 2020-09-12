#!/usr/bin/env bash

docker build --tag=project .

docker image ls

docker run -p 8000:80 project