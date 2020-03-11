#!/usr/bin/env bash

set -e

docker build -t wn1980/wifi-ap:rpi . && docker push wn1980/wifi-ap:rpi

docker run -it --rm \
	--privileged \
	--net host \
	--name wifi-ap \
	-v /dev/urandom:/dev/random \
	wn1980/wifi-ap:rpi
