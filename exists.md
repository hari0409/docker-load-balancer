# Used Images:
* `oracle-node` using `oraclelinux:latest`
* `debian-node` using `debian:latest`
* `node-19-buster` using `node:19-buster` 
* `alpine-node` using `alpine:latest`
* `ubuntu-node` using `ubuntu:latest` 

# Start the load balancer:

* Build the image using the command `docker build -f ./alpine.Dockerfile -t alpine-node .`
* Run the command `docker run -d -p 80:80 -e DEFAULT_HOST=172.17.0.1 -v /var/run/docker.sock:/tmp/docker.sock:ro --name nginx jwilder/nginx-proxy`
* Run the images using the command `docker run -d -p 3000 -e VIRTUAL_HOST=172.17.0.1 alpine-node`
* Remove the container image if required using the command `docker rm CONTAINER_ID`
* Get live container logs `docker logs -f NGINX_CONTAINER_ID` & `docker logs NGINX_CONTAINER` for the recent logs.
* Stop all the running containers `docker stop $(docker ps -a -q)`
* To remove all the containers `docker rm $(docker ps -a -q)` and to kill by `docker kill $(docker ps -q)`