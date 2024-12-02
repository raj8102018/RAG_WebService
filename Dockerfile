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

# Copy requirements and install Python dependencies
COPY requirements.txt ./ 
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . ./ 

# Copy the .env file into the container (with proper source and destination)
COPY .env /app/.env

# Expose Flask port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
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

# Copy requirements and install Python dependencies
COPY requirements.txt ./ 
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . ./ 

# Copy the .env file into the container (with proper source and destination)
COPY .env /app/.env

# Expose Flask port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
