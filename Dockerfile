FROM netsyos/base:latest

RUN apt-get -y install nginx

RUN mkdir /etc/service/nginx
ADD service/nginx.sh /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
