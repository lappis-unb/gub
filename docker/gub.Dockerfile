FROM python:3.6-slim

RUN python -m pip install --upgrade pip

COPY ./requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

ADD ./gub /gub

WORKDIR /gub
