# Start with a base image
FROM python:3.9-slim

# Add application source code
WORKDIR /app
COPY . /app

# Install any required dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Command to run the application
CMD ["python", "app.py"]
