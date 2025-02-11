# Use official Python image
FROM python:3.9-slim

WORKDIR /app

# Copy dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port 8000 and set entry point
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
