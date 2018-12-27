FROM python:3.6-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /src
WORKDIR /src
COPY . /src

RUN apt-get update && \
    apt-get install gcc -y && \
    pip install -r requirements.txt
