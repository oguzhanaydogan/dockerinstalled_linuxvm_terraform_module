#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo systemctl start docker
# usermod -a -G docker oguzhan     #change here with your username
sudo systemctl enable docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo git clone https://github.com/deopinc/jenkins-with-nodejs.git
cd /jenkins-with-nodejs
sudo docker build -t jenkins-nodejs-dind .
sudo docker run -p 8080:8080 -p 50000:50000 -d --restart=on-failure -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd)/datadir:/var/jenkins_home --name jenkins-nodejs-dind jenkins-nodejs-dind
# docker logs -f jenkins-nodejs-dind

