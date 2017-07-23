FROM ubuntu:16.10

MAINTAINER conglang

WORKDIR /blog

EXPOSE 4000

RUN \
  apt-get update && apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get update && apt-get install -y curl nodejs git cron && \
  mkdir -p /blog && \
  mkdir -p /script

COPY init.sh /script/
COPY main_config.yml /script/
COPY theme_config.yml /script/
COPY unsplash2.jpg /script/
COPY unsplash4.jpg /script/
COPY styles.css /script/

COPY id_rsa /root/.ssh/id_rsa
RUN \
  ssh-keyscan -t rsa github.com >> /root/.ssh/known_hosts && \
  chmod 400 /root/.ssh/id_rsa

COPY .gitconfig /root/.gitconfig

RUN chmod +x /script/init.sh

RUN \
  npm install -g hexo-cli

CMD \
  /script/init.sh