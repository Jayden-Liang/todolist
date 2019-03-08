    FROM python:3.6-slim
    MAINTAINER Nick Janetakis <nick.janetakis@gmail.com>
    ENV INSTALL_PATH /todolist
    RUN mkdir -p $INSTALL_PATH
    WORKDIR $INSTALL_PATH
    COPY requirements.txt requirements.txt  
    RUN pip install -r requirements.txt
    COPY . .
    CMD gunicorn -b 0.0.0.0:2000 --access-logfile - "todolist.app:create_app()"
