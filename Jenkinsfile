pipeline {
    agent any

    stages {
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
                    sh 'docker-compose up -d --no-color --remove-orphans'
                    sh 'docker-compose ps'
                }
            }
        }
    }
}
