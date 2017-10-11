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
sudo docker build -t centos7-32-fs-build .
sudo docker run -i --privileged --name=centos7-32-fs-build-run -v /tmp:/tmp centos7-32-fs-build
sudo docker rm centos7-32-fs-build-run
sudo docker rmi -f centos7-32-fs-build
cd centos7-32-base
cp /tmp/centos7.tar.bz2 .
sudo docker build -t spokencloud-spoken-docker.jfrog.io/centos7-32-base .
sudo docker push spokencloud-spoken-docker.jfrog.io/centos7-32-base
'''
            }
        }
    }
}
