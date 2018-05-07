#!/bin/bash
## ============================================
##	Project:	devstack
##	File:		docker/build.sh
##	Author:		Donald Raikes
##	Date:		05/05/2018
##
##	Script to build the devstack image.
## ============================================
USERID=`id -u`
GID=`id -g`
docker build --force-rm=true --compress -q \
	--build-arg HTTP_PROXY=http://www-proxy.us.oracle.com:80 \
	--build-arg HTTPS_PROXY=http://www-proxy.us.oracle.com:80 \
	--build-arg http_proxy=http://www-proxy.us.oracle.com:80 \
	--build-arg https_proxy=http://www-proxy.us.oracle.com:80 \
	--build-arg USERID=$USERID \
	--build-arg GROUPID=$GID \
	-t devstack .
