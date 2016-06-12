FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    bash \
    curl \
    iproute \
    iputils-ping \
    libgmp3-dev \
    iptraf

RUN mkdir /home/app
WORKDIR /home/app

COPY start.sh /home/app
COPY tun-plugs /home/app
COPY ghost-node /home/app

EXPOSE 80

VOLUME ["/ghost"]

ENTRYPOINT ["./start.sh"]

