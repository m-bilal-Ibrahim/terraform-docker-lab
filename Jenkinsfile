pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/YourUser/terraform-docker-lab.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
