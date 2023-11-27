# Use an official Python runtime as a parent image
#FROM python:3.8-slim
FROM python:3.10-alpine
# Update package lists and install telnet, vim, and net-tools
#RUN apt-get update \
 #   && apt-get install -y telnet vim net-tools \
 #   && rm -rf /var/lib/apt/lists/*

# Copy the application
COPY clado-sample-flask /opt/server/clado-sample-flask

# Set the working directory in the container
WORKDIR /opt/server/clado-sample-flask/

# Install necessary dependencies
#RUN pip install flask mysql-connector-python flask-cors
RUN  pip3 install flask mysql-connector-python flask-cors
# Run app.py when the container launches
CMD ["python", "app.py"]

# Expose the port
EXPOSE 8080

