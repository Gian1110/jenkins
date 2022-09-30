pipeline {
    environment {
        inicia ='Hello'
    }
    agent{ 
        dockerfile true
         }
    stages {
        stage('build'){
            echo "building image.."
            sh 'docker build -t nodeGian:1.0 .'
        }
        stage('run'){
            echo 'running node Gian'
            sh 'docker run --name nodeGian -d nodeGian:1.0'
        }
        stage('test'){
            steps{
                sh 'node --version '
            }
        }
    }   
}
    

