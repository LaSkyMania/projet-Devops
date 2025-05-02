pipeline {
    agent any
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
                git branch: 'main', url: 'https://github.com/LaSkyMania/projet-Devops.git'
            }
        }
    }
}
