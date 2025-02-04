FROM jenkins/jenkins:lts

USER root

RUN mkdir -p /jenkins && chown -R jenkins:jenkins /jenkins

USER jenkins

COPY plugins.txt /jenkins/plugins.txt
RUN jenkins-plugin-cli --plugin-file /jenkins/plugins.txt
