FROM python:3

RUN mkdir /app

ADD main.py /app
ADD requirements.txt /app
ADD connectors /app/connectors

RUN pip install -r /app/requirements.txt

ENV AWAIR_ENDPOINT=https://developer-apis.awair.is/graphql
ENV AWAIR_TOKEN=not-valid-token
ENV INFLUXDB_HOST=127.0.0.1
ENV INFLUXDB_PORT=8083
ENV INFLUXDB_USERNAME=awair
ENV INFLUXDB_PASSWORD=awair
ENV INFLUXDB_DATABASE=awair-db

CMD [ "python", "/app/main.py" ]