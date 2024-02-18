pipeline {
    agent any

    stages {
        stage("Install jq") {
            steps {
                sh 'apt update && sudo apt install -y jq'
            }
        }
        stage("Verify tooling") {
            steps {
                sh '''
                    docker version
                    docker info
                    docker-compose --version
                    curl --version
                    jq --version
                '''
            }
        }
        stage('Prune Docker data') {
            steps {
                sh 'docker rm -f uiproject_container || true'  // Eğer uiproject_container mevcutsa önce onu sil
                sh 'docker build -t uiproject_image .'         // Docker imajını oluştur
                sh 'docker run -d -p 86:8080 --name uiproject_container uiproject_image'  // Docker konteynerini başlat
            }
        }
    }
}
