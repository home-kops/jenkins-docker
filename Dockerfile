ARG JENKINS_VERSION='2.496-jdk21'

FROM jenkins/jenkins:${JENKINS_VERSION}

USER root

RUN mkdir -p /jenkins && chown -R jenkins:jenkins /jenkins

RUN apt-get update && apt-get install -y curl unzip

# Install plugin installation manager
RUN curl -sSL -o /usr/local/bin/plugin-manager \
    https://github.com/jenkinsci/plugin-installation-manager-tool/releases/latest/download/jenkins-plugin-manager-*.jar

COPY plugins.txt /jenkins/plugins.txt

RUN java -jar /usr/local/bin/plugin-manager \
    --plugin-file /jenkins/plugins.txt \
    --war /usr/share/jenkins/jenkins.war \
    --plugin-download-directory /usr/share/jenkins/ref/plugins \
    --verbose

USER jenkins
