# Base Docker Image Fucking the GFW

``` bash
source gfw/env.sh
docker build --build-arg APT_MIRROR=$DOCKER_BUILD_APT_MIRROR -t organization/image-name .
```

