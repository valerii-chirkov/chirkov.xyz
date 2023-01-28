FROM python:3.11


RUN apt-get update

RUN apt-get install vim -y

RUN mkdir /app
WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY requirements.txt /app/

RUN pip install "setuptools<58.0"

RUN pip install -r requirements.txt

COPY . /app/