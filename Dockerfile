FROM python:stretch

LABEL maintainer="xw_158520@126.com"

COPY . /app

WORKDIR  /app

RUN pip3 install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]