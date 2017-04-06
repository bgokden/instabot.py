FROM python:3.4.3

RUN pip3 install --upgrade pip

RUN pip3 install requests

ADD . /usr/src/app

WORKDIR /usr/src/app

CMD [ "python3", "./app.py" ]
