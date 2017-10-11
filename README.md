This repo was forked from https://github.com/nunofernandes/docker-centos7-32bits-scratch.

This project generates the docker container 'centos7-32-base' which is the base for centos7-i386, which itself is the base for our 32bit centos7 build docker (centos7-build-i386).

The stages of execution is as follows:
1. Build container A from ./Dockerfile.
2. Run container A. It is being ran once, and its purpose is to generates a tar file /tmp/centos7.tar.bz2. The /tmp dir is mounted from the host.
3. Build container B from ./centos7-32-base/Dockerfile. This docker depends on the tar created by container A.
4. Container B is the centos7-32-base.

A good place to start reading is the Jenkinsfile if you want to follow the logic yourself.

