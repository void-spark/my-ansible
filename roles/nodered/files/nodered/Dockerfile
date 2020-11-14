FROM nodered/node-red

USER root

RUN apk add vorbis-tools
RUN apk add alsa-utils

USER node-red

RUN npm install node-red-contrib-moment
RUN npm install node-red-dashboard
RUN npm install node-red-node-email
RUN npm install node-red-contrib-credentials
RUN npm install node-red-contrib-sun-position
RUN npm install node-red-contrib-influxdb
RUN npm install node-red-contrib-play-sound
