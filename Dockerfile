FROM python:slim-buster
ENV PYTHONUNBUFFERED=1

RUN apt-get update \
    && apt-get install -y git less openssh-client zip bash \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install --no-cache --upgrade awsebcli awscli
    
VOLUME /app
WORKDIR /app

