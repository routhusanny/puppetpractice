FROM registry.access.redhat.com/ubi8/ubi:8.9
COPY jboss-eap-7.4.0.zip .
RUN yum -y update && \
    yum install -y unzip java-1.8.0-openjdk && \
    unzip jboss-eap-7.4.0.zip -d / && \
    rm jboss-eap-7.4.0.zip
RUN mkdir -p /jboss-eap-7.4/modules/system/layers/base/com/oracle/main/
COPY module.xml ojdbc8.jar /jboss-eap-7.4/modules/system/layers/base/com/oracle/main/
EXPOSE 8080
COPY helloworld.war /jboss-eap-7.4/standalone/deployments/
CMD ["/jboss-eap-7.4/bin/standalone.sh", "-b", "0.0.0.0"]
