# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app


RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80
RUN errbot --init
RUN mkdir -p /app/data/plugins/errbotio/err-storage-redis
RUN cp /app/files/redisstorage.plug /app/data/plugins/errbotio/err-storage-redis
RUN cp /app/files/redisstorage.py /app/data/plugins/errbotio/err-storage-redis
RUN cp /app/files/config.py /app/config.py

# Run app.py when the container launches
CMD ["errbot"]