FROM openjdk:8-jdk-alpine
EXPOSE 8080
COPY . .
#RUN ./gradlew clean build
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

CMD ["java", "-Dspring.data.mongodb.uri=mongodb://mymongo:27017/mydb","-jar","app.jar"]
#CMD java -jar app.jar --host 0.0.0.0
#ENTRYPOINT ["java","-jar","./app.jar" --host 0.0.0.0]
#ENTRYPOINT ["/usr/bin/top"]