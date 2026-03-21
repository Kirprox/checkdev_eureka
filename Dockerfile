FROM maven:3.9.6-eclipse-temurin-17

RUN mkdir checkdev_eureka

WORKDIR checkdev_eureka

COPY . .

RUN mvn package -Dmaven.test.skip=true

CMD ["java", "-jar", "target/eureka-0.0.1-SNAPSHOT.jar"]