pipeline {
    agent any

    stages {
        stage('Install Docker Compose') {
            steps {
                script {
                    sh 'curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose'
                    sh 'chmod +x /usr/local/bin/docker-compose'
                    sh 'docker-compose --version'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t uiproject_image .'
                }
            }
        }
        stage('Start container') {
            steps {
                script {
                    sh 'docker-compose up -d --no-color --wait'
                    sh 'docker-compose ps'
                }
            }
        }
    }
}
