## ======================================
##	File:	devstack/docker/Dockerfile
##	Author:	Donald Raikes
##	Date:	05/05/2018
## ======================================
FROM	oraclelinux:7-slim
MAINTAINER	Donald Raikes
ARG		USERID
ARG		GROUPID

## Update the base image:
RUN		yum upgrade -y && \
		yum install -y \
	git \
	vim \
	mlocate \
	sudo \
	iputils
COPY	.env	/etc/
RUN		echo ". /etc/.env" >> /root/.bashrc

##	Add the latest jdk:
WORKDIR /tmp
COPY	software/jdk*.rpm /tmp/
RUN		rpm -iv jdk*.rpm && \
		rm -fr /tmp/*.rpm

## Create the dev user:
RUN		/sbin/groupadd -g $GROUPID dba && \
		/sbin/useradd -m -s /bin/bash -u $USERID -g $GROUPID -G wheel devuser  && \
	echo "devuser:devuser" | chpasswd && \
	echo ". /etc/.env" >> /home/devuser/.bashrc
USER	devuser
WORKDIR	/home/devuser
