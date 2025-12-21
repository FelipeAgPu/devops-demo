from fastapi import FastAPI
from prometheus_client import make_asgi_app, Counter, Histogram
import time

app = FastAPI()

metrics_app = make_asgi_app()
app.mount("/metrics", metrics_app)
c = Counter("My Counter", "It just counts")
h = Histogram('request_latency_seconds', 'Description of histogram', ["path"])

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/counter")
async def counter():
    c.inc()
    return {"message": "Counter increased by one."}

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/hello")
def hello():
    start = time.time()
    try:
        payload = {"message": "hello from fastapi"}
        return payload
    finally:
        h.labels("/hello").observe(time.time() - start)