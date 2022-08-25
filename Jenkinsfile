pipeline {
    environment {
        inicia ='Hello'
    }
    agent any

    stages('build docker') {
        step{
            sh 'mvn clean install'
        }
        step {
            sh 'docker build -t shanem/spring:last .'
        }
    }
} 
