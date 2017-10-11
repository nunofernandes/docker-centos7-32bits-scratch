#!/bin/bash

/ami-creator/ami_creator/ami_creator.py -c /centos7.ks -n centos7
image=centos7.img
mount="$(mktemp -d)"
mount -o loop "$image" "$mount"
set +e
tar -cjf /tmp/centos7.tar.bz2 -C "$mount" --numeric-owner .
result=$?
set -e
umount "$mount"
rmdir "$mount"
exit $result
