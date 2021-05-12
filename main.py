'''
Author: clingxin
Date: 2021-05-12 09:29:39
LastEditors: clingxin
LastEditTime: 2021-05-12 10:11:41
FilePath: /docker-vscode/main.py
'''
from fastapi import FastAPI
import os
import redis
import socket

app = FastAPI()
redis_host = os.environ.get('REDIS_HOST') or "localhost"
cache = redis.client.Redis(host=redis_host)

@app.get("/")
async def root():
    return {
        "hello": "world",
        "hits": cache.incr("hits"),
        "app_hostname": socket.gethostname(),
        "redis_hostname": redis_host
    }