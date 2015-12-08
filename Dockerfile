FROM node
MAINTAINER Bill Moritz

ENV HUBOT_YOUTUBE_API_KEY=
ENV HUBOT_SLACK_TOKEN=
ENV HUBOT_GOOGLE_CSE_ID=
ENV HUBOT_GOOGLE_CSE_KEY=
ENV HUBOT_SENTIMENTAL_QUIET=true

RUN mkdir /opt/saucebot

ADD bin /opt/saucebot/bin
ADD external-scripts.json /opt/saucebot/external-scripts.json
ADD hubot-scripts.json /opt/saucebot/hubot-scripts.json
ADD package.json /opt/saucebot/package.json

RUN cd /opt/saucebot; npm install --save

WORKDIR /opt/saucebot

CMD bin/hubot --adapter slack
