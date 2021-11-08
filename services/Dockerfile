FROM python:3.10-slim-bullseye

ARG SERVICE_NAME
WORKDIR /app

COPY ./requirements.txt ./requirements.txt

RUN pip install --no-cache-dir --upgrade -r ./requirements.txt

COPY ./${SERVICE_NAME}/${SERVICE_NAME} ./${SERVICE_NAME}
COPY ./${SERVICE_NAME}/test ./test

ENV FLASK_APP ${SERVICE_NAME}

CMD flask run --host=0.0.0.0