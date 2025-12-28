FROM openjdk:26-ea-17-jdk-slim
COPY /home/ubuntu/jenkins-pipeline/target/helloworld.jar /app/helloworld.jar
WORKDIR /app
CMD ["java", "-jar", "helloworld.jar"]