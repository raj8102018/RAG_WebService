# Base image
FROM python:3.12.4

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Create and activate a virtual environment
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Copy requirements and install Python dependencies
COPY requirements.txt ./ 
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . ./ 

# Expose Flask port
EXPOSE 5000

# Run the application
CMD ["sh", "-c", "gunicorn -w 4 -b 0.0.0.0:$PORT wsgi:app"]
