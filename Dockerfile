FROM python:3

RUN apt-get update && apt-get install -y \
    rabbitmq-server && \
    service rabbitmq-server start

RUN useradd -ms /bin/bash celery
USER celery

COPY . /

WORKDIR /

RUN pip install -r requirements.txt

CMD [ "celery", "-A", "tasks", "worker", "tasks.hello_world" ]