#
# Build stage
#
FROM maven:3.8.6-jdk-11 AS builder
RUN mkdir -p /build
RUN ls
COPY boxfuse-sample-java-war-hello/ /build
RUN ls
WORKDIR /build
RUN ls
#RUN mvn -B dependency:resolve dependency:resolve-plugins
#COPY src /build/src
#RUN mvn clean package dependency:copy-dependencies
RUN ls

#
# Package Stage
#

#
# Publish Stage
#


