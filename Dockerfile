FROM nginx:1.16.0
COPY ./ngx_pagespeed.so /etc/nginx/modules
