from fastapi import FastAPI

app = FastAPI()

@app.get("/ping")
def ping():
    return {"message": "SmartSIS is alive!"}

@app.get("/health")
async def health_check():
    return {"status": "ok"}

