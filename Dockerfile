FROM nginx:1.16.0
COPY ./ngx_pagespeed.so /etc/nginx/modules
COPY ./nginx.conf /etc/nginx/
COPY ./default.conf /etc/nginx/conf.d

