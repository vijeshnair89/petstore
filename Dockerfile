FROM tomcat:9     
WORKDIR /usr/local/tomcat/webapps
RUN cp -R /usr/local/tomcat/webapps.dist/* .
COPY target/jpetstore.war /usr/local/tomcat/webapps/petstore.war
EXPOSE 8080
CMD ["catalina.sh", "run"] 
 
