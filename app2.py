from flask import Flask, render_template

app=Flask(__name__)

@app.route("/")
def index():
    headline="Ola mundo Cão"
    return render_template("index.html", headline=headline)

@app.route("/bye")
def bye():
    headline="Adeus mundo"
    return render_template("index.html",headline=headline)

