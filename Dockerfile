FROM node:12-alpine

ENV PKG_CACHE_PATH=/build/.cache

RUN apk update && apk add --no-cache git && npm install -g pkg

WORKDIR /build

CMD [ "pkg", "." ]