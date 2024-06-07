@Library('jenkins-libs') _

pipeline {
  agent any
  parameters {
      //server values
        string(name: 'remoteHost', defaultValue: '192.168.100.173', description: 'dns o ip del host')
        string(name: 'release_version', defaultValue: '1.0.0', description: 'version de la applicacion')
  }
  environment {
    def pathJsonFile = "release.json"
  }
  stages {
 
    stage("Picking"){
     
        steps {
           
              script{
              
                def parameterMap = [:]
                parameterMap["jobName"] = "picking"
                parameterMap["remoteHost"] = remoteHost
                parameterMap["pathJson"] = pathJsonFile
                dockerb.callJob(parameterMap);

              }
        }
    }

    stage("cac"){
     
        steps {

          script{
                
                def parameterMap = [:]
                parameterMap["jobName"] = cac
                parameterMap["remoteHost"] = remoteHost
                parameterMap["pathJson"] = pathJsonFile
                dockerb.callJob(parameterMap);

              }
        }
    }

  }
}  

