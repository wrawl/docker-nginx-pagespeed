#!/bin/bash

apt-get update \
    && apt-get install -y unzip gcc make libpcre3-dev zlib1g-dev wget g++ uuid-dev git \
    && export NGINX_VERSION=1.16.0 \
    && export NPS_VERSION=1.13.35.2 \
    && cd ~ \
    && wget -qO - http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz | tar zxfv - \
    && wget https://github.com/pagespeed/ngx_pagespeed/archive/v${NPS_VERSION}-beta.zip \
    && unzip v${NPS_VERSION}-beta.zip \
    && cd incubator-pagespeed-ngx-${NPS_VERSION}-beta/ \
    && psol_url=https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz \
    && [ -e scripts/format_binary_url.sh ] \
    && psol_url=$(scripts/format_binary_url.sh PSOL_BINARY_URL) \
    && wget ${psol_url} \
    && tar -xzvf $(basename ${psol_url}) \
    && cd ../nginx-$NGINX_VERSION \
    && ./configure --add-dynamic-module=../incubator-pagespeed-ngx-${NPS_VERSION}-beta --with-compat \
    && make modules
