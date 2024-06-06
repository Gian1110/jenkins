import groovy.json.JsonSlurperClassic

def jsonParse(def json) {
    new groovy.json.JsonSlurperClassic().parseText(json)
}
pipeline {
  agent any
  parameters {
      //server values
        string(name: 'remoteHost', defaultValue: '192.168.100.173', description: 'dns o ip del host')
        string(name: 'release_version', defaultValue: '1.0.0', description: 'version de la applicacion')
  }
  environment {
    def job1 = "picking"
    def pathJsonFile = "release.json"
    def parameterMap = [:]
              parameterMap["jobName"] = job1
              parameterMap["remoteHost"] = remoteHost
              parameterMap["imageVersion"] = "1.0.1"
  }
  stages {
    stage("read release"){
     
        steps {
            script {
              def jsonData = readJSON file: pathJsonFile 
            }
        }
    }
    stage("picking"){
     
        steps {
           
              
              dockerb.callJob(parameterMap);
            
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

