FROM nginx:1.16.0
COPY ./ngx_pagespeed.so /etc/nginx/modules
COPY ./nginx.conf /etc/nginx/
COPY ./default.conf /etc/nginx/conf.d
RUN mkdir /var/log/pagespeed /var/ngx_pagespeed_cache && chown nginx:nginx -R /var/log/pagespeed /var/ngx_pagespeed_cache

