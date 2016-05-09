FROM ubuntu
MAINTAINER Bogdan Mustiata <bogdan.mustiata@gmail.com>

ENV REFRESHED_AT=2016-05-09

RUN apt-get update -y &&\
    apt-get install -y wget git &&\
    useradd -m raptor

USER raptor
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash && \
    . ~/.profile && \
    nvm install v6.1.0 && \
    echo "registry = http://172.17.0.1:8081/content/groups/npm/" > ~/.npmrc && \
    npm install -g hexo-cli

CMD cd /site && \
    . ~/.profile && \
    npm install && \
    hexo generate

