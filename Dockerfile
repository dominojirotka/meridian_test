FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y wget

COPY . .

RUN pip install --upgrade pip && pip install .

CMD ["python", "demo/main.py"]
