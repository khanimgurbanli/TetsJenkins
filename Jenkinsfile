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
                sh 'docker rm -f ui_project_container || true'
            }
        }
        stage('Build Image') {
            steps {
                // Create Docker image
                sh 'docker build -t ui_images .'
            }
        }
        stage('Run Container') {
            steps {
                // Start Docker container with volume
                sh 'docker run -dit --name ui_project_container -p 4:8080 -v ui_project_volume:/opt/volumestorage/ui_storage ui_images'
            }
        }
    }
}
