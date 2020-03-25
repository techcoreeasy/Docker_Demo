# docker_demo
This is docker introductory implementation for making quick start to docker.

@@@@@@@@@@@  Docker Installation @@@@@@@@@@@@@@@@@@@

$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh


@@@@@@@@@@@@  Write Docker File  @@@@@@@@@@@@@@@@@@

Write Docker File

#Define Base Image

FROM ubuntu

#Write Maintainer Name

MAINTAINER techcoreeasy@gmail.com

#Update the installing repo of the ubuntu

RUN apt-get update

#Install nginx

RUN apt-get install nginx -y

#Copy Your Source Code Inside Docker Image

COPY index.html /var/www/html/

#Write Port Where Your Code Should Serve

EXPOSE 80

#Final Command To Run Your Application

CMD ["nginx","-g","daemon off;"]


@@@@@@@@@@@@@  Build Docker Image   @@@@@@@@@@@@@@@@

docker build -t myfirstdocker:v1 .

@@@@@@@@@@@@@  Check Docker Image   @@@@@@@@@@@@@@@@

docker images

@@@@@@@@@@@@ Run Docker Image & Create Container @@@@

docker run -d -name techcoreeasy -p 8000:80 myfirstdocker:v1 .

@@@@@@@@@@@@ Check docker is running or not @@@@@@@@

docker ps

@@@@@@@@@@ Inspect container @@@@@@@@@@@@@@@@@@@@@@@

docker inspect techcoreeasy

@@@@@@@@@@ Check Logs of the container @@@@@@@@@@@@@@

gocker logs -f techcoreeasy

@@@@@@@@@@@@ Login inside docker hub @@@@@@@@@@@@@@@@@@@@

docker login

@@@@@@@@@@@@@ Tag the image @@@@@@@@@@@@@@@@@@@@@@@@@@


docker tag myfirstdocker:v1 techcoreeasy/docker_demo:v1

@@@@@@@@@@@@ Push the image @@@@@@@@@@@@@@@@@@@@@@@@@@@

docker push techcoreeasy/docker_demo:v1

@@@@@@@@@@@@@@@ Remove our image @@@@@@@@@@@@@@@@@@@@@

docker stop techcoreeasy
docker rm techcoreeasy

docker rm myfirstdocker:v1

@@@@@@@@@@@@@@@@@ docker pull Image @@@@@@@@@@@@@@@@@@@@@@@

docker pull techcoreeasy/docker_demo:v1

@@@@@@@@@@@@@@@ docker run pulled image @@@@@@@@@@@@@@@@@@

docker run -d -name techcoreeasy -p 8000:80 techcoreeasy/docker_demo:v1
