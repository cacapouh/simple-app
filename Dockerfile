FROM python:3.9

RUN mkdir /work
WORKDIR /work
COPY main.py /work

ENTRYPOINT python main.py