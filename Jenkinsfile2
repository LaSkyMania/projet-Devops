pipeline {
    agent any
    environment {
        DOCKER_IMAGE_NAME = 'myapp-image'
        REPO_URL = 'https://github.com/LaSkyMania/projet-Devops.git'
        BRANCH_NAME = 'main'
    }
    stages {
        stage('Clean Workspace') {
            steps {
                script {
                    cleanWs()
                }
            }
        }
        stage('Clone GitHub Repo') {
            steps {
                script {
                    git branch: "${BRANCH_NAME}", url: "${REPO_URL}"
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Créer le Dockerfile avec la version mise à jour
                    sh '''
                        echo "FROM nginx
                        RUN apt update && apt install -y net-tools iproute2 iputils-ping ssh vim
                        COPY . /usr/share/nginx/html
                        EXPOSE 80
                        " > Dockerfile
                    '''
                    
                    // Construire l'image Docker
                    sh "docker build -t ${DOCKER_IMAGE_NAME} ."
                    
                    // Vérifier la construction de l'image
                    sh "docker images ${DOCKER_IMAGE_NAME}"
                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline terminée.'
        }
    }
}
