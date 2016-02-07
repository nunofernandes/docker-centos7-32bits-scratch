#!/bin/bash

/ami-creator/ami_creator/ami_creator.py -c /centos7.ks
/sig-cloud-instance-build/docker/img2tar.sh centos7-*.img
