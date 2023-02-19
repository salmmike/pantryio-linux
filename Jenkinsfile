pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') {
            steps {
                sh 'cmake .'
                sh 'make'
            }
        }
        stage('Test'){
            steps {
                sh 'echo test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo publish'
            }
        }
    }
}
