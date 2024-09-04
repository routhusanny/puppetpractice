# Use a base image with OpenJDK and Tomcat
FROM tomcat:9.0-jdk11-openjdk

# Maintain the label (metadata) about the image
LABEL maintainer="routhusanny@gmail.com"

# Remove the default Tomcat webapps (optional, for a clean setup)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the HelloWorld.war file into the Tomcat webapps directory
COPY helloworld.war /usr/local/tomcat/webapps/

# Expose the port that Tomcat listens on
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
