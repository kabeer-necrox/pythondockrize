# Use the official Python image as the base image
FROM python:3.10-slim-buster

# Set the working directory in the container
WORKDIR /Downloads/code

# Copy the requirements file into the container
COPY . .

# Install the dependencies
RUN pip install flask

# Set the environment variables  
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port the Flask app runs on
EXPOSE 5000

# Run the Flask application when the container starts
CMD ["flask", "run"]
