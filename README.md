centos-7-32bits scratch
===============

This dockerfile creates the centos 7 32 bit image to be used in docker.

--
```bash
docker build -t centos7-32 .
docker run -it --privileged --name=centos7-32-run centos7-32
docker cp centos7-32-run:/tmp/centos7*bz2 .
```

License
-------

This code is licensed under the GPLv2.
