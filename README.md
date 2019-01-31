# docker-pxt-arcade
[![Build Status](https://travis-ci.org/iaroslavn/docker-pxt-arcade.svg?branch=master)](https://travis-ci.org/iaroslavn/docker-pxt-arcade)
[![License](https://img.shields.io/badge/BSD-0--clause-blue.svg)](https://github.com/iaroslavn/docker-pxt-arcade/blob/master/LICENSE)

Docker image for [pxt-arcade](https://github.com/Microsoft/pxt-arcade) editor on Node.js server.

Want to run your local copy of https://arcade.makecode.com or just having troubles building [pxt-arcade](https://github.com/Microsoft/pxt-arcade)?
Look no further.

## Setup

1. Execute:
```bash
git clone https://github.com/iaroslavn/docker-pxt-arcade.git \
&& cd docker-pxt-arcade \
&& docker build -t iaroslavn/pxt-arcade . \
&& docker run -p 3232:3232 --name pxt-arcade -d iaroslavn/pxt-arcade
```
2. Open http://your_docker_host_ip:3232 in your browser (it may take a while for the server to spin up).

## Sample reasons why would you need to use this Docker image:
* You just want to work on your cool Arcade game and don't want any hassle installing [node.js](https://nodejs.org/), [npm](https://www.npmjs.com/), and [pxt](https://makecode.com/cli).
* As of Jan 2019 [pxt-arcade](https://github.com/Microsoft/pxt-arcade) is in Beta and it is not published to the npm public registry, so your options are either to use this Docker image, use https://arcade.makecode.com (which may not be suitable for build automation), or build [pxt-arcade](https://github.com/Microsoft/pxt-arcade) locally.
* You want to avoid any issues while building [pxt-arcade](https://github.com/Microsoft/pxt-arcade) locally. E.g. issues like [pxt-arcade/issues/698](https://github.com/Microsoft/pxt-arcade/issues/698).
* You don't want to rely on https://arcade.makecode.com future availability and/or want to work on your arcade game while not being connected to the Internet.
* Code in this repository can serve as a base to your PXT Docker image(s) due to its unrestrictive license.
