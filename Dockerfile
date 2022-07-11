FROM python:3.8

LABEL Jean-Baptiste Le Henaff "jeanbaptiste.lehenaff@outlook.fr"

WORKDIR /app/2048.botify.com

RUN adduser --disabled-password myuser

USER myuser

COPY --chown=myuser:myuser ./requirements.txt .

USER root

RUN apt-get update

RUN apt-get -y install git

RUN git clone https://github.com/wsgisler/flask-2048.git

RUN pip3 install --user -r requirements.txt

EXPOSE 5000

CMD [ "python", "flask-2048/run.py" ]