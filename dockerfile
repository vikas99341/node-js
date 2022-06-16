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
