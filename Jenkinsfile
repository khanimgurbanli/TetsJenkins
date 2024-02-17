pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t uiproject_image .'
            }
        }
        stage('Run Docker Compose') {
            steps {
                sh 'docker-compose up -d --build'
            }

        }
    }
}
