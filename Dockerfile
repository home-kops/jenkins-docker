FROM jenkins/jenkins:2.509-jdk21

USER root

RUN mkdir -p /jenkins && chown -R jenkins:jenkins /jenkins

# Install zrok
# RUN curl -sSf https://get.openziti.io/install.bash | bash -s zrok

# Install zrok agent
# RUN apt install zrok-agent

USER jenkins

COPY plugins.txt /jenkins/plugins.txt
RUN jenkins-plugin-cli --plugin-file /jenkins/plugins.txt

COPY files/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
