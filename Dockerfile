FROM jenkins/jenkins:2.426.1-lts-jdk11

COPY --chown=jenkins:jenkins scripts/plugins3.txt /usr/share/jenkins/ref/plugins3.txt

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins3.txt