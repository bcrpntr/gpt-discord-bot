# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the container
COPY . .
COPY .env .

# Install project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the command to run your script or application
CMD ["python", "-m", "dotenv", "-f", ".env", "src.main"]
