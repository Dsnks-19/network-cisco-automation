FROM jenkins/jenkins:lts

USER root

# Install required tools
RUN apt-get update && \
    apt-get install -y python3-pip sshpass && \
    pip3 install ansible paramiko

# Keep running as root to avoid permission issues