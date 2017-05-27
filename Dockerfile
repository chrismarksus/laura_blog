FROM node:latest

MAINTAINER Chris Marks <chrismarksus@gmail.com>

LABEL version="1.0"
LABEL description="hexo"

RUN mkdir -p /root/blog
WORKDIR /root/blog
VOLUME /root/blog

COPY package.json /root/blog/
RUN npm install

COPY . /root/blog

EXPOSE 4000
CMD [ "npm", "start" ]
