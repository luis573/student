import datetime

from flask import Flask, render_template

app=Flask(__name__)

@app.route("/")
def index():
    nw=datetime.datetime.now()
    new_year=nw.month==1 and nw.day==1
    new_year=True #Falsear
    return render_template("index2.html",new_year=new_year)