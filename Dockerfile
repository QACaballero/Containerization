FROM ubuntu
MAINTAINER localhost<qacaballero@tip.edu.ph>


#SKIP Promps
ARG DEBIAN_FRONTEND=noninteractive

#UPDATE PACKAGES
RUN apt update; apt dist-upgrade -y

#INSTALL PACKAGES
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils 
EXPOSE 80
#SET ENTRYPOINT
ENTRYPOINT apachectl -D FOREGROUND
