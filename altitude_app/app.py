from flask import Flask
import json

app = Flask(__name__)


@app.route("/home")
def home():
    return json.dumps({"status": "success"})


if __name__ == "__main__":
    app.run()
