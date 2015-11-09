FROM debian
MAINTAINER Yun Tse Wu <windsor106@gmail.com>
RUN echo 'deb http://http.debian.net/debian/ jessie main contrib' >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
linux-headers-amd64 \
virtualbox \
virtualbox-dkms
RUN adduser --disabled-password --quiet --gecos '' virtualbox
USER virtualbox
