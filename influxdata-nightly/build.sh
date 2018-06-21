#!/bin/sh

docker rmi nmrmsys/influxdb-nightly
docker build . --target influxdb-nightly -t nmrmsys/influxdb-nightly

docker rmi nmrmsys/chronograf-nightly
docker build . --target chronograf-nightly -t nmrmsys/chronograf-nightly

docker rmi nmrmsys/flux-nightly
docker build . --target flux-nightly -t nmrmsys/flux-nightly
