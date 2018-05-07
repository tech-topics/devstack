#!/bin/bash
docker run --name devstack --rm -it \
	-e http_proxy=http://www-proxy.us.oracle.com:80 \
	-e https_proxy=http://www-proxy.us.oracle.com:80 \
	-e HTTP_PROXY=http://www-proxy.us.oracle.com:80 \
	-e HTTPS_PROXY=http://www-proxy.us.oracle.com:80 \
	-v /tmp:/tmp \
	devstack:latest bash
