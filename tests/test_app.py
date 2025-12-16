import sys
import os
sys.path.append(os.getcwd())

import json
from app import app

def test_home():
    client = app.test_client()
    response = client.get("/")
    data = json.loads(response.data)

    assert response.status_code == 200
    assert data["message"] == "Welcome to Py API Demo!"

def test_add_numbers():
    client = app.test_client()
    response = client.post("/add", json={"a": 5, "b": 3})
    data = json.loads(response.data)

    assert response.status_code == 200
    assert data["result"] == 8
