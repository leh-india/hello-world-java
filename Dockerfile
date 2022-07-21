# Pull base image 
From tomcat:latest

# Maintainer 
MAINTAINER "webapp" 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
