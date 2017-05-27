FROM node:7-alpine

MAINTAINER Chris Marks <chrismarksus@gmail.com>

LABEL version="1.0"
LABEL description="hexo"

RUN [ "mkdir", "/root/blog" ]

ADD [ "package.json", "/root/blog/" ]

WORKDIR /root/blog

RUN npm install --verbose
ENV NODE_PATH=/root/blog/node_modules

COPY . /root/blog
VOLUME /root/blog
EXPOSE 4000
CMD [ "npm", "start" ]
