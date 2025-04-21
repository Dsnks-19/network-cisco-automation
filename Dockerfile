FROM python:3.10

RUN apt update && apt install -y sshpass && \
    pip install ansible

WORKDIR /app
COPY . /app
