FROM tomcat:latest
RUN apt update
RUN apt install -y maven, default-jdk
RUN mkdir -p /build
WORKDIR /build
RUN ls -R
EXPOSE 8080