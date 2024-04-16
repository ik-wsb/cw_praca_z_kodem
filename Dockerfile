# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory within the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of your application code into the container
COPY app.py /app

# Specify the command to run when the container starts
CMD ["python", "app.py"]