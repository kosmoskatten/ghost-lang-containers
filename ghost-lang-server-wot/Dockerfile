FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    bash \
    libgmp3-dev \
    iptraf

RUN mkdir /home/app
WORKDIR /home/app

COPY start.sh /home/app
COPY ghost-server /home/app

EXPOSE 8000

ENTRYPOINT ["./start.sh"]
