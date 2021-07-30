FROM docker:19.03.13-dind-rootless
USER root
RUN apk update && apk add python3 bash python3-dev py3-pip gcc linux-headers musl-dev util-linux openssl-dev libffi-dev make && pip3 install --upgrade pip
RUN pip3 install prefect
RUN pip3 install cryptography==2.8
RUN pip3 install setuptools_rust docker-compose