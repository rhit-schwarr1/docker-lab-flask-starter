# Use Python as the base image
FROM python:3.13-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the dependency list into the container
COPY requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files into the container
COPY . .

ENV TASK_DATA_DIR=/app/data

# Document the port used by Flask
EXPOSE 5000

# Start the Flask application
CMD ["python", "app.py"]