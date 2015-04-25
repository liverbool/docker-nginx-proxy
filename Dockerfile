FROM jwilder/nginx-proxy
MAINTAINER Liverbool nukboon@gmail.com

RUN locale-gen en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN export LC_ALL=en_US.UTF-8

RUN timedatectl set-timezone Asia/Bangkok

RUN { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 100m;'; \
    } > /etc/nginx/conf.d/custom_proxy.conf

# RUN
# docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock liverbool/nginx-proxy
