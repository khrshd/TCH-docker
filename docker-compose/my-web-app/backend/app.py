# /home/ec2-user/docker-compose/my-web-app/backend/app.py

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Docker!'