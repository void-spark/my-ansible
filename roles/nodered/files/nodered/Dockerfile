FROM nodered/node-red

USER root

RUN apk add vorbis-tools
RUN apk add mpg123
RUN apk add alsa-utils

# 29 is usually audio gid on debian, and seemd unused in docker alpine.
# This is fragile to say the least, but works for now.
RUN addgroup -g 29 hostaudio && addgroup node-red hostaudio

USER node-red

RUN npm install node-red-contrib-moment
RUN npm install node-red-dashboard
RUN npm install node-red-node-email
RUN npm install node-red-contrib-credentials
RUN npm install node-red-contrib-sun-position
RUN npm install node-red-contrib-influxdb
RUN npm install node-red-contrib-play-sound
