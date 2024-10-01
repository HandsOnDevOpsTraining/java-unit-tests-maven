pipeline {
    agent any

    stages {
        stage('Clone or Checkout Code') {
            steps {
                git url:"https://github.com/HandsOnDevOpsTraining/java-unit-tests-maven.git", branch:"main"
            }
        }

        stage('Build Code') {
            steps {
                // Build the Java project using Maven
                sh 'mvn clean package'
            }
        }

        stage('Test Code') {
            steps {
                // Run unit tests using Maven
                sh 'mvn test'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build Docker image for the Java application
                sh 'docker build -t aug-batch-image .'
            }
        }
    }

    post {
        always {
            // Clean up any leftover Docker images or containers
            sh 'docker system prune -f'
        }

        success {
            echo 'Build and test completed successfully!'
        }

        failure {
            echo 'Build or test failed.'
        }
    }
}
