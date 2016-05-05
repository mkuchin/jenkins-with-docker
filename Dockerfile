FROM jenkins:2.0-alpine

USER root
RUN curl -sSL https://get.docker.com/builds/Linux/x86_64/docker-1.11.1.tgz | tar -xzv && \
    mv docker/docker /usr/local/bin/ && \
    rm -rf docker
RUN usermod -aG docker jenkins

USER jenkins
