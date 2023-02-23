pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }

    stages {
        stage('Build') {
            steps {
                sh "echo $PWD"
                sh "echo $USER"
                sh "which ssh"
                sh "hostname"
                sh "./repo_init.sh"
            }
        }
    }
}
