FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN pip install numpy==1.12.0

ENTRYPOINT ["python", "t_1.py"]
