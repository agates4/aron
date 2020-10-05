# set base image (host OS)
FROM python:3.8

# set the working directory in the container
WORKDIR /code

# install OS dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY src/ .
