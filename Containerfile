# Copyright 2026 Orcro Limited <team@orcro.co.uk>
# Licensed under Apache-2.0
# Maintained by Alex <alexander.murphy@orcro.co.uk>

FROM debian:trixie-slim
MAINTAINER Alex alexander.murphy@orcro.co.uk
USER root

# Update trixie base image
RUN apt update

# Install dependencies
RUN apt install make

# Install tools for compliance (note that many are already installed, mawk, find, etc.)
RUN apt install -y --no-install-recommends r-base 
# RUN apt install -y --no-install-recommends ripgrep

# And additional R libraries
# RUN R -e 'install.packages("dplyr", dependencies = TRUE)'

CMD echo "hello world"
