Docker file is a blueprint for building image 
 Keywords:
 FROM:  Talks about the base image 
 ENV : Optional as environment variables are defined here .
 RUN : Execute any Linux command .Execution will happen inside the container .
 COPY: Source can be local, and destination is inside container
 CMD – Always part of docker file . Execute entry point Linux command .
       Multiple RUN commands can be there but only one CMD command .
===========
FROM ubuntu
Maintainer "Vikas"
RUN apt-get update
RUN apt-get install vim -y
CMD /bin/echo "Hello from Docker" 

===========
nano dockerfile
docker build -t <docker-hub-id>/ubuntu-morning:v1 .
docker images
docker run -d --name custom-docker <docker-hub-id>/ubuntu-morning:v1
docker ps -a

docker login
provide username & password
docker push <docker-hub-id>/ubuntu-morning:v1
check on hub.docker.com

====================================
FROM nginx:latest

RUN apt -y update
RUN apt install -y git
RUN apt install -y apache2

COPY ./index.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]

=========================================================================
nano dockerfile
docker build -t ********/nginx-custom-image:1.0 .
docker images 
docker run -d ********/nginx-custom-image:1.0
docker ps -a

docker login - provide your credentials 
docker push ***********/nginx-custom-image:1.0
Check on hub.docker.com
clean everything from your loacl and create new stuffs

docker pull *********/nginx-custom-image:1.0 
 and continue as normal

to go inside the container:
docker exec -it <container-id> /bin/bash
example : docker exec -it e316f75cad14 /bin/bash

to see the property of container
example : docker inspect e316f75cad14

to check the logs
example : docker logs -f <keyword>

to start and stop the container
example : docker start <container-id>
example : docker stop <container-id>

=================================================
FROM nginx:latest

RUN apt -y update
RUN apt install -y git
RUN apt install -y apache2

COPY ./index.html /usr/share/nginx/html/index.html
VOLUME /app

CMD ["nginx", "-g", "daemon off;"] 
======================================================
