# Use a minimal Python base image
FROM python:3.11-slim

# Create and set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose your API port
EXPOSE 8000

# Run FastAPI and Telegram bot in parallel
# CMD ["bash", "-c", "uvicorn main:app --host 0.0.0.0 --port 8000 & python app/bot.py"]

