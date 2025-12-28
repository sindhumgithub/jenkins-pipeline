pipeline {
    agent any

    stages {
        stage('Build Java') {
            steps {
                echo "Build Java project"
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image"
                sh 'docker build -t muddanadevops/helloworld:latest .'
                sh 'docker push muddanadevops/helloworld:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                echo "Deploying into Kubernetes pods"
                sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}
