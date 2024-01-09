FROM ubuntu
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
WORKDIR /opt
COPY target/*.war welcomeapp.war
CMD ["java", "-jar", "welcomeapp.war"]