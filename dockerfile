# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app will run on
EXPOSE 5000

# Define environment variable for Flask
ENV FLASK_APP=app/predict.py

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]


# # Use slim Python image
# FROM python:3.9-slim

# # Set working directory
# WORKDIR /app

# # Copy requirements
# COPY requirements.txt .

# # Install dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy application code
# COPY app/ .

# # Default command (can be overridden)
# CMD ["python", "train.py"]
