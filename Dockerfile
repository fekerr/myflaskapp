# fekerr 20180918
# There are some initial tutorials on Dockerfiles here:
# https://docs.docker.com/get-started/part2/#dockerfile

# Use an official Python 3 runtime as a parent image
FROM python:3

#RUN apt-get update -qq && \
#    DEBIAN_FRONTEND=noninteractive \
#    apt-get install -y --no-install-recommends \
#    mysql-server \
#?   libmysqlclient-dev
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
# This is now done by startup.sh run by CMD
#RUN service mysql start

# mysql_secure_installation ?

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
#RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
#ENV NAME World

# Run startup.sh when the container launches
CMD ["bash", "startup.sh"]

