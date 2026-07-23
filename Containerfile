# Copyright 2026 Orcro Limited <team@orcro.co.uk>
# Licensed under Apache-2.0
# Maintained by Alex <alexander.murphy@orcro.co.uk>

###
### Install the base image
###

# localhost/debbase
FROM debian:trixie-20260713-slim
RUN apt update
MAINTAINER Alex alexander.murphy@orcro.co.uk
USER root

### 
### Install libraries (Debian repos)
### 

# localhost/gcc
RUN apt install -y --no-install-recommends gcc

# localhost/g++
RUN apt install -y --no-install-recommends g++

# localhost/libcurl4-openssl-dev
RUN apt install -y --no-install-recommends libcurl4-openssl-dev 

# localhost/make
RUN apt install -y --no-install-recommends make 

# localhost/libuv1-dev
RUN apt install -y --no-install-recommends libuv1-dev 

###
### Install non-default tools (Debian repos)
###

# localhost/rg
RUN apt install -y --no-install-recommends ripgrep

# localhost/r
RUN apt install -y --no-install-recommends r-base 

# localhost/dplyr
RUN R -e 'install.packages("dplyr", dependencies = TRUE)'

# Sanity check
CMD echo hello world
