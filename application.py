from flask import Flask

app= Flask (__name__)

@app.route("/")
def index():
    return "Hello World!!jjjjjjjjjj"


@app.route("/Luis")
def david():
    return "Hello DAvid bananajj"

@app.route("/<string:name>")
def hello(name):
    name=name.capitalize()
    return f"Hello, {name}"

# if __name__ == '__main__':
#     app.run()
