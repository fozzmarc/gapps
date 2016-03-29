FROM ubuntu
MAINTAINER MarcLi <fozzmarc@gmail.com>

WORKDIR /home

CMD echo 'install wget'
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
CMD echo 'install done'

CMD echo 'downloading'
RUN wget -c https://github.com/opengapps/arm/releases/download/20160328/open_gapps-arm-6.0-stock-20160328.zip
CMD echo 'done!'