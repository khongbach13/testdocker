pipeline {
    agent any
    stages {
        stage('Test Docker Connection') {
            steps {
                script {
                // This step should not normally be used in your script. Consult the inline help for details.
		withDockerRegistry(credentialsId: 'docker_hub', url: 'https://index.docker.io/v1/') {
    // some block
  		}
		sh '''docker build -t khongbach13/test:v1 .'''
		sh '''docker push khongbach13/test:v1'''				
		}
            }
        }
    }
}

