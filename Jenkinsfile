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
sudo docker rmi centos7-32-tmp
mount="$(mktemp -d --tmpdir)"
mount -o loop /tmp/centos7*"$image" "$mount"

cd "$mount"
#this tar seems to cause issues such as rpmdb corruption
#tar -cpSf - --acls --selinux --xattrs * | bzip2 > ${image}.tar.bz2

# This one appears to work fine for docker creation
# hacked by jefby,change the output file to /tmp/xxx.tar.bz2
tar --numeric-owner -c . | bzip2 > /tmp/${image}.tar.bz2
cd - >& /dev/null
umount "$mount"
rmdir "$mount"

            }
        }
    }
}
