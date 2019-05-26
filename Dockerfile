FROM mhart/alpine-node:4.8.3
ENV NODE_ENV production
RUN apk --update add python make gcc g++ git libuv bash curl tar bzip2 \
  && mkdir -p /root \
  && mkdir -p /app \
  && npm install -g npm@4 \
  && npm install -g node-gyp \
  && node-gyp install
