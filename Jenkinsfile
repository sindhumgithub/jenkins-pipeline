pipeline {
    agent any

    stages {
        stage('Build Java') {
            steps {
                sh 'mvn clean package'
            }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t muddanadevops/helloworld:latest .'
                sh 'docker push muddanadevops/helloworld:latest'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
            }

        }
        }
    }
}