pipeline {
    agent any

    stages {
        stage('Clone code') {
            steps {
                git 'https://github.com/AjayRatakonda/Fresh.git'
            }
        }
        stage('code build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('deploy code') {
            steps {
                deploy adapters: [tomcat9(credentialsId: '3f9256c4-638a-4d13-a49a-fe414491d570', path: '', url: 'http://13.126.156.250:8082/')], contextPath: 'NTRamaRao', war: '**/*.war'    
            }
        }    
    }
}
