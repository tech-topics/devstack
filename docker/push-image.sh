#!/bin/bash
## =======================================
##	push-image.sh
##	Author: Donald Raikes <don.raikes@oracle.com>
##	Date:	04/06/2018
##
##	Push the openssl-docker image to the dockerhub repository.
## =======================================
docker login
docker push raikessecurity/devstack:latest
docker logout
