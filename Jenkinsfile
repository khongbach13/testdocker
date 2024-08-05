pipeline {
    agent any
    stages {
        stage('Test Docker Connection') {
            steps {
                script {
                    def dockerInfo = sh(script: 'docker info', returnStdout: true).trim()
                    echo "Docker Info: ${dockerInfo}"
                }
            }
        }
    }
}

