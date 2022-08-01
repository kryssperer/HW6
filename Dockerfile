#
# Build stage
#
FROM maven:3.8.6-jdk-11 AS builder
RUN mkdir -p /build
WORKDIR /build
COPY boxfuse-sample-java-war-hello/ /build
RUN mvn -B dependency:resolve dependency:resolve-plugins
COPY src /build/src
RUN mvn package

#
# Package Stage
#

#
# Publish Stage
#


