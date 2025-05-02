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
                git 'https://github.com/LaSkyMania/projet-Devops.git'
            }
        }
    }
}
