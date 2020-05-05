FROM python:3.8.0-alpine

WORKDIR /home/bishal/docker_project

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


RUN pip install --upgrade pip
COPY ./requirements.txt /home/bishal/docker_project
RUN pip install -r requirements.txt


COPY . /home/bishal/docker_project

