FROM openjdk:8

# Install and configure packages
RUN echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google.list \
 && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
 && set -x \
 && apt-get update -y \
 && apt-get install -y python3-pip jq openssh \
 && pip3 install awscli --upgrade --ignore-installed six \
 && aws --version
