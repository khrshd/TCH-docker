# /home/ec2-user/docker-compose/my-web-app/backend/Dockerfile

FROM python:3.9.18-slim-bullseye

WORKDIR /app

COPY app.py .
COPY requirements.txt .

RUN pip3 install -r requirements.txt

EXPOSE 5000 

ENTRYPOINT python3 -m flask run --host=0.0.0.0 