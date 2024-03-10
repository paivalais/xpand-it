# Usar o CentOS 7
FROM centos:7

FROM tomcat:8.5-jre8
COPY sample.war /usr/local/tomcat/webapps/
COPY server.xml /usr/local/tomcat/conf/
COPY server.p12 /usr/local/tomcat/conf/
EXPOSE 4041
CMD ["catalina.sh", "run"]

