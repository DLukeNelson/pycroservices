FROM python:3.10-slim-bullseye

WORKDIR /app

COPY ./requirements.txt ./requirements.txt

RUN pip install --no-cache-dir --upgrade -r ./requirements.txt

COPY ./example ./example
COPY ./test ./test

ENV FLASK_APP example

CMD flask run --host=0.0.0.0