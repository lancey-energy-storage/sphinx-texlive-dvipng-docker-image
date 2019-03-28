FROM debian:9

# Update
RUN apt-get update

# Install packages
RUN apt-get -y install dvipng mercurial texlive-full xzdec python-pip python3-pip python-dev build-essential

# Install python packages
COPY requirements.txt .
RUN pip install -r requirements.txt
