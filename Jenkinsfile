pipeline {
    
    environment {
    registry = "talharao/nodej_s"
    registryCredential = 'Dockerhub'
}

    stages {
        stage('Build') {
            steps {
                echo "Done"
            }
        }
       stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
    
        }
        stage('Building image') {
            steps{
                script {
                    docker.build registry + ":$BUILD_NUMBER"
        }
      }
     }
    
    }

}
