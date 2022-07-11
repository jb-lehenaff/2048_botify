FROM python:3.8

LABEL Jean-Baptiste Le Henaff "jeanbaptiste.lehenaff@outlook.fr"

WORKDIR /app/2048.botify.com

RUN adduser --disabled-password myuser

USER myuser

USER root

RUN apt-get update

RUN apt-get -y install git

RUN git clone https://github.com/wsgisler/flask-2048.git

ADD . /app/2048.botify.com
 
RUN pip3 install --user -r requirements.txt

RUN apt  -y install gunicorn3

EXPOSE 5000

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["sh","entrypoint.sh"]
