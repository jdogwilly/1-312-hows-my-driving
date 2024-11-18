FROM python:3.14.0a1-slim

ENV PYTHONUNBUFFERED=true \
    FLASK_DEBUG=1

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY src/ /app
