#!/bin/bash

#cd $GOPATH/src/nolancon/dummy-device-plugins-numa
cd ./numatestdp
sudo go build
docker build -t numa-test-dp .
kubectl create -f numa-test-device-plugin.yaml

#cd $GOPATH/src/nolancon/dummy-device-plugins-numa
cd ../numatestdp2
sudo go build
docker build -t numa-test-dp2 .
kubectl create -f numa-test-device-plugin.yaml
