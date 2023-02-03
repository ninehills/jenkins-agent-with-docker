# jenkins-agent-with-docker

Jenkins agent with docker

## Usage

1. Build: `bash -x build.sh`
2. Add node in Jenkins:
    - Remote root directory: `/home/jenkins/agent`
    - Number of executors: 5
    - Label: docker arm64(or amd64)
    - Launch method: Launch agent by connecting it to the controller
        - [Checked] Use WebSocket.
2. Modify `start.sh`
    - `JENKINS_URL`: Jenkins URL, eg "http://example.com:8080".
    - `JENKINS_AGENT_TOKEN`: Agent token.
    - `JENKINS_AGENT_NAME`: Agent name.
