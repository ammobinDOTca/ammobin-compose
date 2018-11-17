#!/bin/bash
docker build -f Dockerfile-redis -t ammobindotca/redis:arm . && docker push ammobindotca/redis:arm
