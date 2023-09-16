from maven:3.6.3-jdk-11

WORKDIR /myApp

COPY . /myApp/

RUN mvn clean install -DskipTests

EXPOSE 8080

CMD ["mvn", "spring-boot:run"]

