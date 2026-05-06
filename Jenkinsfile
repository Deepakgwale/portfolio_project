pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Deepakgwale/portfolio_project.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t portfolio-app .'
            }
        }

        stage('Run') {
            steps {
                sh 'docker run -d -p 8080:8080 portfolio-app'
            }
        }
    }
}
