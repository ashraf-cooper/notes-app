# Use official Python runtime as parent image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt first (for better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Expose port 5000
EXPOSE 5000

# Run the app
CMD ["python3", "app.py"]
