import groovy.json.JsonSlurperClassic

def jsonParse(def json) {
    new groovy.json.JsonSlurperClassic().parseText(json)
}
pipeline {
  agent any
  parameters {
      //server values
        string(name: 'remoteHost', defaultValue: '192.168.100.173', description: 'dns o ip del host')
        string(name: 'release_version_picking', defaultValue: '1.0.0', description: 'version de la applicacion')
        string(name: 'release_version_cac', defaultValue: '1.0.0', description: 'version de la applicacion')
        string(name: 'release_version_checkout', defaultValue: '1.0.0', description: 'version de la applicacion')
        string(name: 'release_version_hub', defaultValue: '1.0.0', description: 'version de la applicacion')
        string(name: 'release_version_login', defaultValue: '1.0.0', description: 'version de la applicacion')

  }
  stages {
    stage("read release"){
     
        steps {
            script {

              def jsonFile = "release.json"
              def jsonData = readJSON file: jsonFile
              echo "json content: ${jsonData}"
              def key1 = jsonData["key1"]
              echo "valor1: ${key1}"
            }
        }
    }
    stage("picking"){
     
        steps {
            build job: "picking", parameters: [
              string(name: "remoteHost", value: "${remoteHost}"),
              string(name: "imagenVersion", value:"${release_version_picking}")
            ]
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

