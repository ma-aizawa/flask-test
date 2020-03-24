FROM python:3.7.6-slim

WORKDIR /usr/src/app

COPY Pipfile .
COPY Pipfile.lock .

ADD . /usr/src/app

RUN apt-get update && \
    pip install pipenv && \
    pipenv install --system

CMD ["pipenv", "run", "start"]
