FROM tomcat:9.0-jdk11-openjdk

RUN rm -rf /usr/local/tomcat/webapps/kiran*

COPY Amazon.war /usr/local/tomcat/webapps/kiran.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
