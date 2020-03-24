FROM python:3.7.6-slim

WORKDIR /usr/src/app

COPY Pipfile .
COPY Pipfile.lock .

ADD . /usr/src/app

RUN apt-get update && \
    apt-get install -y default-mysql-client && \
    pip install pipenv && \
    pipenv install

CMD ["pipenv", "run", "start"]
