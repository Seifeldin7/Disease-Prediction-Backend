FROM ubuntu:18.04

RUN apt-get update && \
    apt-get clean && \
    apt-get install -y python3.6 python3.6-dev python3-pip

WORKDIR app
COPY requirements.txt /app/
RUN rm -f /usr/bin/python && ln -s /usr/bin/python3.6 /usr/bin/python
RUN rm -f /usr/bin/python3 && ln -s /usr/bin/python3.6 /usr/bin/python3
RUN pip3 install -r requirements.txt
COPY . /app/
