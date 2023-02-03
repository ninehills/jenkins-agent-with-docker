IMG="jenkins/inbound-agent-with-docker:latest"
JENKINS_URL="http://example.com:8080"
JENKINS_AGENT_TOKEN="aaaaa"
JENKINS_AGENT_NAME="11"

docker run -d --name jenkins-agent \
    --privileged \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --init jenkins/inbound-agent-with-docker:latest \
    -url $JENKINS_URL \
    -webSocket \
    -workDir=/home/jenkins/agent \
    $JENKINS_AGENT_TOKEN \
    $JENKINS_AGENT_NAME
