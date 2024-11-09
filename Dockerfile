# Use a Python image as the base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory (the app) into the container's working directory
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port 5000 to access the Flask app
EXPOSE 5000

# Set environment variable for Flask app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Define the command to run the Flask app when the container starts
CMD ["flask", "run"]

