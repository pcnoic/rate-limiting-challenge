"""
Blabla Dummy API
Developed for the DevOps Challenge
"""

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

# Application Controllers
app = FastAPI()

# CORS
origins = ["*"]

# API Methods
methods = ["*"]

# HTTP headers
headers = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=methods,
    allow_headers=headers
)

# Logic Controllers
# Endpoints
@app.get("/up")
def up():
    response = {"status":"alive"}
    return response
