FROM tomcat:latest
RUN apt update
RUN apt install -y maven default-jdk
RUN mkdir -p /build
WORKDIR /build
RUN ls -R
COPY pom.xml /build
COPY src /build/src
RUN ls -R
#RUN mvn -B dependency:resolve dependency:resolve-plugins
RUN mvn clean package
RUN ls -R
#EXPOSE 8080