FROM python:3.8.0-alpine

WORKDIR /home/bishal/docker_project

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# install psycopg2 dependencies
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev


RUN pip install --upgrade pip
COPY ./requirements.txt /home/bishal/docker_project



RUN pip install -r requirements.txt

COPY ./entrypoint.sh /home/bishal/docker_project/entrypoint.sh

COPY . /home/bishal/docker_project


ENTRYPOINT ["/home/bishal/docker_project/entrypoint.sh"]

