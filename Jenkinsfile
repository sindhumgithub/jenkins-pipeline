pipeline {
    agent any

    stages {
        stage('Build Java') {
            steps {
                echo "Build java project"
                sh 'mvn clean package'
            }
        stage('Build Docker Image') {
            steps {
                echo "Building docker image"
                sh 'docker build -t muddanadevops/helloworld:latest .'
                sh 'docker push muddanadevops/helloworld:latest'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                echo "deploying into kubernetes pods"
                sh 'kubectl apply -f deployment.yaml'
            }

        }
        }
    }
}