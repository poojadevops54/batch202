# -------------------------
# Stage 1 - Builder
# -------------------------
FROM python:3.12-slim AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --user -r requirements.txt

# -------------------------
# Stage 2 - Runtime
# -------------------------
FROM python:3.12-alpine

WORKDIR /app

COPY --from=builder /root/.local /root/.local

COPY app.py .

ENV PATH=/root/.local/bin:$PATH

EXPOSE 8080

CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]