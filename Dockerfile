FROM debian
MAINTAINER Yun Tse Wu <windsor106@gmail.com>
RUN echo 'deb http://http.debian.net/debian/ jessie main contrib' >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
#	linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') \
	virtualbox
RUN adduser --disabled-password --quiet --gecos '' virtualbox
RUN service virtualbox start 
USER virtualbox
CMD [virtualbox]
