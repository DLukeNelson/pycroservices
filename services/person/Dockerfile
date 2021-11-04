FROM python:3.10-slim-bullseye

WORKDIR /app

COPY ./requirements.txt ./requirements.txt

RUN pip install --no-cache-dir --upgrade -r ./requirements.txt

COPY ./person ./person
COPY ./test ./test

CMD python ./person/main.py