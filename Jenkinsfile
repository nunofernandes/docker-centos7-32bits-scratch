pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                label 'centos7'
            }
            steps {
                checkout scm
                sh '''
sudo docker build -t centos7-32-tmp .
sudo docker run -i --privileged --name=centos7-32-run -v /tmp:/tmp centos7-32-tmp
sudo docker rm centos7-32-run
sudo docker rmi -f centos7-32-tmp
docker run -it -v /tmp:/tmp -v `pwd`:/build docker-images.eng.spoken.com/centos7-build-x86_64 /build/run-scindo.sh
            }
        }
    }
}
