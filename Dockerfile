FROM nginx:latest

RUN apt update && apt install -y git

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

RUN git clone https://github.com/bagir2311/portofolio.git /tmp/html && \
    cp -r /tmp/html/* .
