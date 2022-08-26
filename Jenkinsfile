pipeline {
    environment {
        inicia ='Hello'
    }
    agent{ docker {image 'node:16.13.1-alpine'} }
    stages{
            stage('test'){
                steps{
                    sh 'mvn --version'
                   
                }
            }
        }
    
} 
