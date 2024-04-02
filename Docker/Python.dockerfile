# Use the ubuntu base image
FROM ubuntu

# Set the working directory
WORKDIR /app

# Download and install python3 and python3-pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Copy the Python code into the container
COPY . /app

# Set the entrypoint and cmd
ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
