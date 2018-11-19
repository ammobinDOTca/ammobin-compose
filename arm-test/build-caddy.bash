#!/bin/bash
set -e
docker build -t ammobindotca/caddy:arm64 -f Dockerfile-caddy . && docker push ammobindotca/caddy:arm64
docker manifest create ammobindotca/caddy:arm ammobindotca/caddy:arm64 --amend
docker manifest annotate --arch arm ammobindotca/caddy:arm ammobindotca/caddy:arm64
docker manifest push ammobindotca/caddy:arm  -p

