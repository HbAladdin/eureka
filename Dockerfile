FROM openjdk:8-jre

MAINTAINER zhouruizhong <528441592@qq.com>

RUN mkdir /app

COPY ./target/eureka-1.0.0-SNAPSHOT.jar /app/eureka.jar

WORKDIR /app

CMD java -jar eureka.jar --spring.profiles.active=dev

EXPOSE 8761