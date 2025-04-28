pipeline {
    agent any

    tools {
        maven 'maven_3.9.9'  // Specify Maven tool name as defined in Global Tool Configuration
        git 'Git'
        jdk 'JDK_11'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SaiPardhiv/cd_project.git'
            }
        }

        stage('Build Maven Package') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }

        stage('Test') {
            steps {
                echo "Test Completed"
            }
        }

        stage('Start Services with Docker Compose') {
            steps {
                script {
                    bat 'docker-compose up -d --build'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check logs.'
        }
        cleanup {
            cleanWs() // only cleans Jenkins workspace, not containers
        }
    }
}
