FROM python:3.10-slim

WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the source and data directories
COPY src/ src/
COPY data/ data/

# Run the bot
CMD ["python", "-u", "src/bot.py"]