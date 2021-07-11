FROM python:latest
WORKDIR /home/api

RUN apt-get upgrade
RUN apt-get update

RUN git clone https://github.com/tykoooo/university-domains-list-api.git .
RUN python3 -m venv /home/api
RUN pip install -r /home/api/requirements.txt

ENTRYPOINT python app.py
