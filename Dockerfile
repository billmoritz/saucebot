FROM node
MAINTAINER Bill Moritz

RUN mkdir /opt/saucebot

ADD bin /opt/saucebot/bin
ADD external-scripts.json /opt/saucebot/external-scripts.json
ADD hubot-scripts.json /opt/saucebot/hubot-scripts.json
ADD package.json /opt/saucebot/package.json

RUN cd /opt/saucebot; npm install --save

WORKDIR /opt/saucebot

CMD bin/hubot --adapter slack
