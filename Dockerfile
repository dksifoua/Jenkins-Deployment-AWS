FROM jenkins/jenkins:latest-jdk11

LABEL maintainer="dimitri.sifoua@gmail.com"

USER ROOT

COPY --from=docker:dind /usr/local/bin/docker /usr/bin/

USER jenkins

ARG GITHUB_USER
ARG GITHUB_PASSWORD
ARG JENKINS_ADMIN_EMAIL
ARG JENKINS_ADMIN_DESCRIPTION
ARG JENKINS_ADMIN_NAME
ARG JENKINS_ADMIN_PASSWORD
ARG JENKINS_ADMIN_USER
ARG JENKINS_URL

ENV GITHUB_USER $GITHUB_USER
ENV GITHUB_PASSWORD $GITHUB_PASSWORD
ENV JENKINS_ADMIN_EMAIL $JENKINS_ADMIN_EMAIL
ENV JENKINS_ADMIN_DESCRIPTION $JENKINS_ADMIN_DESCRIPTION
ENV JENKINS_ADMIN_NAME $JENKINS_ADMIN_NAME
ENV JENKINS_ADMIN_PASSWORD $JENKINS_ADMIN_PASSWORD
ENV JENKINS_ADMIN_USER $JENKINS_ADMIN_USER
ENV JENKINS_URL $JENKINS_URL
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY plugins.txt $REF/plugins.txt
COPY jenkins.yaml $JENKINS_HOME/jenkins.yaml
COPY jenkins_agent $JENKINS_HOME/jenkins_agent
RUN jenkins-plugin-cli -f $REF/plugins.txt