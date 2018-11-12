# fekerr 20180914
# https://docs.docker.com/get-started/part2/#dockerfile

# Use an official Python runtime as a parent image
FROM python:3

#RUN apt-get update -qq && \
#    DEBIAN_FRONTEND=noninteractive \
#    apt-get install -y --no-install-recommends \
#    mysql-server \
#    libmysqlclient-dev
#    && \
#    apt-get purge -y --auto-remove && rm -rf /var/lib/apt/lists/*

# dev version with less cleanup
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    git \
    vim \
    mysql \
    mysql-server \
    default-libmysqlclient-dev

# stack overflow...
RUN /etc/init.d/mysql start
# mysql_secure_installation ?

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

