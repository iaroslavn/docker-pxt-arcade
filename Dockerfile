FROM node:alpine

ADD entrypoint.sh /entrypoint.sh

WORKDIR /usr/src/app/pxt-arcade

RUN chmod +x /entrypoint.sh \
    && wget https://github.com/Microsoft/pxt-arcade/archive/v0.5.7.tar.gz -O - | tar --strip-components=1 -xz \
    && npm i npm@latest -g \
    && npm install -g pxt \
    && npm install

EXPOSE 3232

ENTRYPOINT ["/entrypoint.sh"]