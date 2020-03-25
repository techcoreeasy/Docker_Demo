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

# Write Port Where Your Code Should Serve
EXPOSE 80

# Final Command To Run Your Application
CMD ["nginx","-g","daemon off;"]
