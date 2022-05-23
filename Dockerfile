FROM python:3.6.15-slim

WORKDIR /jenkinsapp
COPY /hits/app.py /jenkinsapp/
COPY /logs/sh.txt /jenkinsapp/logs/
RUN pip install flask
RUN pip install redis
EXPOSE 5000
CMD ["python3","app.py","run", "--host =0.0.0.0"]
