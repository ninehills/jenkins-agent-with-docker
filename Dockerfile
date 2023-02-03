FROM jenkins/inbound-agent:latest

# Install docker client
ENV DOCKER_CHANNEL stable
ENV DOCKER_VERSION 20.10.22
USER root
RUN curl -fsSL "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz" \
  | tar -xzC /usr/local/bin --strip=1 docker/docker
