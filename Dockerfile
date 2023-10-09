from maven:3.6.3-jdk-11

WORKDIR /myApp

COPY . /myApp/

RUN mvn clean install -DskipTests

RUN export node_version="0.10" \
&& apt-get update && apt-get -y install nodejs="$node_verion"


EXPOSE 8080

CMD ["mvn", "spring-boot:run"]

