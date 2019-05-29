## What is this?
A custom build of the official [Nginx image](https://hub.docker.com/_/nginx/) with [PageSpeed Module](https://developers.google.com/speed/pagespeed/module/) on top.

## Usage
    $ docker pull wrawl/docker-nginx-pagespeed:<tag>
    $ docker run -d -p 80:80 wrawl/docker-nginx-pagespeed:<tag>

The Pagespeed backend is then accessible under [http://localhost:80/pagespeed_global_admin/](http://localhost:80/pagespeed_global_admin/).

## Build/repository
This docker image is available on the DockuerHub (https://hub.docker.com/r/wrawl/nginx-pagespeed).  
Building is done on the Travis-CI (https://travis-ci.org).

## Notes
- You will want to replace the *default.conf* configuration in /etc/nginx/conf.d/. This file is provided only as an example of Pagespeed configuration.  
- If you need to override the default nginx.conf, following line should be kept:
        load_module "modules/ngx_pagespeed.so";