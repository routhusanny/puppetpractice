FROM 064454255305.dkr.ecr.us-east-1.amazonaws.com/dta-cna-image-repo:latest
EXPOSE 8080
COPY helloworld.war /jboss-eap-7.4/standalone/deployments/
CMD ["/jboss-eap-7.4/bin/standalone.sh", "-b", "0.0.0.0"]
