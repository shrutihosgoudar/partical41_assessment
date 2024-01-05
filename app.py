from flask import Flask, jsonify, request
import socket
import datetime

app = Flask(__name__)

@app.route('/')
def get_time():
    timestamp = datetime.datetime.now().isoformat()
    ip_address = request.remote_addr
    return jsonify({"timestamp": timestamp, "ip": ip_address})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
