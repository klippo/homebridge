FROM fulhack/rpi-alpine-node:6
MAINTAINER klippo@deny.se


RUN apk add python make g++ avahi-dev --no-cache \
 && npm install -g --unsafe-perm homebridge homebridge-telldus \
 && apk del make g++  

VOLUME /opt/homebridge/
