#
#  Dockerfile para proyectos Django
#

# Base image.
FROM python:3.6

# create evaroment variable
ENV PYTHONUNBUFFERED 1

# Create code folder.
RUN mkdir /code

# Set working dir.
WORKDIR /code

# Add python requirements file.
COPY requirements.txt /code/

# Install required programs.
RUN apt-get update
RUN apt-get install -y \
    gettext \
    vim
RUN pip install -r requirements.txt
# Add source code.
ADD . /code/

EXPOSE 8080