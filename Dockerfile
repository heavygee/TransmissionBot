FROM python:3.10-alpine

COPY bot.py .
COPY requirements.txt .
COPY config.json .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "-u", "bot.py"]