FROM 334189989353.dkr.ecr.us-east-1.amazonaws.com/baseimage
EXPOSE 8080
COPY helloworld.war /jboss-eap-7.4/standalone/deployments/
CMD ["/jboss-eap-7.4/bin/standalone.sh", "-b", "0.0.0.0"]
