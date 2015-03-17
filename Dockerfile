## -*- docker-image-name: "armbuild/ocs-app-mysql:latest" -*-
FROM armbuild/ocs-distrib-ubuntu:trusty
MAINTAINER Online Labs <opensource@ocs.online.net> (@online_en)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update         \
 && apt-get -y -qq upgrade    \
 && apt-get -y -qq install    \
        mysql-server          \
 && apt-get clean


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
