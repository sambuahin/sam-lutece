FROM mdillon/postgis:9.4

# install ant git maven tomcat8
RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y default-jdk ant git maven tomcat8 --no-install-recommends

#COMPILE BUILD DMR APPLICATION
WORKDIR /app
#RUN git clone https://github.com/lutece-secteur-public/espacepublic-module-dansmarue-leaflet.git && \
#    mvn -f espacepublic-module-dansmarue-leaflet clean install
#RUN git clone https://github.com/lutece-secteur-public/espacepublic-module-dansmarue-unittree.git && \
#    mvn -f espacepublic-module-dansmarue-unittree clean install
#RUN git clone https://github.com/lutece-secteur-public/espacepublic-plugin-dansmarue.git && \
#    mvn -f espacepublic-plugin-dansmarue clean install
#RUN git clone https://github.com/lutece-secteur-public/espacepublic-module-workflow-dansmarue.git && \
#    mvn -f espacepublic-module-workflow-dansmarue clean install
#RUN git clone https://github.com/lutece-secteur-public/espacepublic-module-rest-dansmarue.git && \
#    mvn -f espacepublic-module-rest-dansmarue clean install
COPY site-demo /app/site-demo

#DEPLOY WAR ON TOMCAT
RUN mv site-demo/target/*.war /var/lib/tomcat8/webapps/site-dmr-demo.war

COPY dump.sql /tmp/
COPY ./createdb_dmr.sh /docker-entrypoint-initdb.d/createdb_dmr.sh

COPY start_tomcat.sh /start_tomcat.sh