FROM alpine:latest

# Install
RUN apk --no-cache update && apk --no-cache upgrade && apk add bash curl --no-cache

# Clean up to make the image as small as possible
RUN apk del --purge --force --no-cache linux-headers binutils-gold gnupg zlib-dev libc-utils && rm -rf /var/lib/apt/lists/* \
    /var/cache/apk/* \
    /usr/share/man \
    /tmp/* \
    /usr/lib/node_modules/npm/man \
    /usr/lib/node_modules/npm/doc \
    /usr/lib/node_modules/npm/html \
    /usr/lib/node_modules/npm/scripts%