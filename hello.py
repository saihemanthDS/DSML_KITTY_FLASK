from flask import Flask

app = Flask(__name__)

@app.route("/hello")
def hello_world():
    return "<p>I have triggered hello_world function</p>"

@app.route("/")
def main_page():
    return "<H1>WELCOME TO MY WEBSITE</H1>"