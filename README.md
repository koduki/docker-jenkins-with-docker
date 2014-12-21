Jekins with Docker in Docker
=======================

This is Jenkins image with docker.

This is based on [jpetazzo/dind](https://github.com/jpetazzo/dind). Thank you.

How to
-----------------------

### make image

``
docker build -t koduki/jenkins-with-docker .
docker images
``

### run image

``
docker run --privileged -p "8000:8000" -it koduki/jenkins-with-docker
``
