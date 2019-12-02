FROM python:3.8-buster

LABEL maintainer="James Liu james@jamesliu.cc"

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]