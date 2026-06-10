# Copyright 2026 Orcro Limited <team@orcro.co.uk>
# Licensed under Apache-2.0
# Maintained by Alex <alexander.murphy@orcro.co.uk>

FROM debian:trixie-slim
MAINTAINER Alex alexander.murphy@orcro.co.uk
USER root

CMD ["/usr/bin/cat", "Hello world from orcro/suite"]

