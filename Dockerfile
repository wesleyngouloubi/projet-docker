FROM ubuntu:latest
MAINTAINER wesley10 (ngouloubiw@gmail.com)

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80

# Clone the repository directly into the target directory
RUN rm -rf /var/www/html/* && \
    git clone https://github.com/wesleyngouloubi/projet-docker.git /var/www/html/

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

