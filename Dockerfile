#
# Build stage
#
FROM maven:3.8.6-jdk-11 AS builder
RUN mkdir -p /build
WORKDIR /build
COPY pom.xml /build
RUN mvn -B dependency:resolve dependency:resolve-plugins
COPY src /build/src
RUN ls -R
RUN mvn clean package dependency:copy-dependencies
RUN ls -R

#
# Publish Stage
#


