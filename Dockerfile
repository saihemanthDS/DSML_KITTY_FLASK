#we will get pre-build image of OS and python
#https://hub.docker.com/_/python

from python:3.9.6-slim-buster

WORKDIR /Users/suraaj/Desktop/DSML_KITTY_FLASK/docker

RUN python3 -m pip install --upgrade pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "-m", "flask", "--app", "loan_app", "run", "--host=0.0.0.0"]

