pipeline {
    agent any

    stages {
        stage('code clone') {
            steps {
                git 'https://github.com/AjayRatakonda/Fresh.git'
            }
        }
        stage('build code') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('deploy code') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'c05d0889-22fb-44a3-a32f-9fa6f24588a6', path: '', url: 'http://3.111.186.232:8081/')], contextPath: 'NTRamaRao', war: '**/*.war'
            }
        }    
    }
}
