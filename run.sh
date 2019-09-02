#!/usr/bin/env bash

docker run -it --rm \
	--privileged \
	--net host \
	--name wifi-ap \
	-v /dev/urandom:/dev/random \
	wn1980/wifi-ap:rpi
