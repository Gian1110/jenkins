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
 
    stage("picking"){
     
        steps {
           
              script{
                def job1 = "picking"
                def jsonData = readJSON file: pathJsonFile 
                def parameterMap = [:]
                parameterMap["jobName"] = job1
                parameterMap["remoteHost"] = remoteHost
                parameterMap["imageVersion"] = jsonData[job1]
                dockerb.callJob(parameterMap);

              }
        }
    }

    stage("cac"){
     
        steps {
            build job: "cac", parameters: [
              string(name: "remoteHost", value: "${remoteHost}"),
              string(name: "imagenVersion", value:"${release_version_cac}")
            ]
        }
    }

  }
}  

