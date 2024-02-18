pipeline {
    agent any
    stages {
        stage('Check Volume') {
            steps {
                script {
                    // Check Docker volume
                    if (sh(script: 'docker volume inspect uiproject_volume &> /dev/null', returnStatus: true) != 0) {
                        // If haven't Create
                        sh 'docker volume create --name uiproject_volume'
                    }
                }
            }
        }
        stage('Remove Container') {
            steps {
                // Stop and Remove Old container
                sh 'docker rm -f uiproject_container || true'
            }
        }
        stage('Build Image') {
            steps {
                // Create Docker image
                sh 'docker build -t ui_image .'
            }
        }
        stage('Run Container') {
            steps {
                // Start Docker container with volume
                sh 'docker run -dit --name uiproject_container -p 4:8080 -v uiproject_volume://volumestorage/uistorage ui_image'
            }
        }
    }
}
