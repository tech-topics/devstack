## ======================================
##	File:	devstack/docker/Dockerfile
##	Author:	Donald Raikes
##	Date:	05/05/2018
## ======================================
FROM	oraclelinux:7-slim
MAINTAINER	Donald Raikes

## Update the base image:
RUN		yum upgrade -y && \
		yum install -y \
	git \
	vim \
	mlocate \
	sudo \
	iputils

##	Add the latest jdk:
WORKDIR /tmp
COPY	software/jdk*.rpm /tmp/
RUN		rpm -iv jdk*.rpm && \
		rm -fr /tmp/*.rpm

WORKDIR	/
