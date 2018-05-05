#!/bin/bash
## ============================================
##	Project:	tomcat-svr
##	File:		build.sh
##	Author:		Donald Raikes
##	Date:		04/19/2018
##
##	Script to build the dnraikes/tomcat-svr image.
## ============================================
docker build --force-rm=true --compress \
	--build-arg HTTP_PROXY=http://www-proxy.us.oracle.com:80 \
	--build-arg HTTPS_PROXY=http://www-proxy.us.oracle.com:80 \
	--build-arg http_proxy=http://www-proxy.us.oracle.com:80 \
	--build-arg https_proxy=http://www-proxy.us.oracle.com:80 \
	-t raikessecurity/devstack .
