FROM python:3.11.3

EXPOSE 8000

RUN mkdir /testing
WORKDIR /testing

COPY requirements.txt /testing/

RUN pip install --upgrade pip && pip install -r requirements.txt

ADD . /testing/
COPY . .
