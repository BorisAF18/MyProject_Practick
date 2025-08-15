from flask import Flask, jsonify, send_from_directory
import json
import os

app = Flask(__name__)
DATA_FILE = "/data/prices.json"

@app.route("/")
def index():
    return send_from_directory(".", "index.html")

@app.route("/data")
def get_data():
    if os.path.exists(DATA_FILE):
        with open(DATA_FILE, "r") as f:
            data = json.load(f)
    else:
        data = {"price": 100}
    return jsonify(data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)