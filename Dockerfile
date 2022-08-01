FROM tomcat:latest
RUN apt update
RUN apt install -y maven default-jdk
RUN mkdir -p /build
WORKDIR /build
COPY pom.xml /build
COPY src /build/src
RUN mvn clean package
RUN ls -R
RUN cp target/hello-1.0.war /usr/local/tomcat/webapps/
RUN ls -R

EXPOSE 8080