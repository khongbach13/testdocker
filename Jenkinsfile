pipeline {
    agent any
    stages {
        stage('Run Docker Container') {
            steps {
                script {
                    // Kéo hình ảnh Docker
                    sh 'docker pull ubuntu:latest'
                    
                    // Chạy container Docker và thực hiện lệnh trong đó
                    sh '''
                    docker run --name my_container -d ubuntu:latest
                    docker exec my_container echo "Hello from inside the container"
                    docker stop my_container
                    docker rm my_container
                    '''
                }
            }
        }
    }
}

