pipeline {
    environment {
        inicia ='Hello'
    }
    agent any
    stages{
        stage('Maven Install'){
            agent{
                docker{
                    image 'maven:3.5.0'
                }
            }
            step{
            sh 'mvn clean install'
            }
        }
        stage('build docker') {
            step {
                sh 'docker build -t shanem/spring-petclinic:latest .'
            }
        }
    }
    
} 
