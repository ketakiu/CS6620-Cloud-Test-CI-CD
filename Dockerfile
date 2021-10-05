FROM python:3.8-alpine

MAINTAINER Srinaveen Desu

COPY ./microservices/service1/app/requirements.txt /microservices/service1/app/requirements.txt

WORKDIR /microservices/service1/app

RUN apk add --update \
  && pip install --upgrade pip  \
  && pip install -r requirements.txt \
  && rm -rf /var/cache/apk/*

COPY microservices/service1/app /app

CMD python app.py