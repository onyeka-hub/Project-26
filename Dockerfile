FROM jenkins/jenkins:2.387.2-lts-jdk11

COPY --chown=jenkins:jenkins scripts/plugins2.txt /usr/share/jenkins/ref/plugins2.txt

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins2.txt