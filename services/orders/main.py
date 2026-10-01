from fastapi import FastAPI


app = FastAPI(
    title="Orders service",
    docs_url=None,
    redoc_url=None,
    openapi_url=None,
)


@app.get("/health", status_code=200)
async def health() -> dict[str, str]:
    return {"status": "ok"}
