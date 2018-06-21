FROM influxdb:1.5.3 as influxdb-nightly
LABEL maintainer "nmrmsys <nmrmsys@gmail.com>"
RUN set -ex && \
    curl -SLO https://dl.influxdata.com/influxdb/nightlies/influxdb-nightly_linux_amd64.tar.gz  && \
    tar xvfz influxdb-nightly_linux_amd64.tar.gz --strip-components=2

FROM chronograf:1.5.0 as chronograf-nightly
LABEL maintainer "nmrmsys <nmrmsys@gmail.com>"
RUN set -ex && \
    curl -SLO https://dl.influxdata.com/chronograf/releases/chronograf-nightly_linux_amd64.tar.gz  && \
    tar xvfz chronograf-nightly_linux_amd64.tar.gz --strip-components=2

FROM buildpack-deps:stretch-curl as flux-nightly
LABEL maintainer "nmrmsys <nmrmsys@gmail.com>"
RUN set -ex && \
    curl -SLO https://dl.influxdata.com/flux/nightlies/platform_nightly_linux_amd64.tar.gz  && \
    tar xvfz platform_nightly_linux_amd64.tar.gz --strip-components=1
EXPOSE 8093/tcp
ENTRYPOINT ["/fluxd"]
