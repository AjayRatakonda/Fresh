FROM tomcat
COPY target/project.war /usr/local/tomcat/webapps/project.war
