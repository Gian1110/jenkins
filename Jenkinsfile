import groovy.json.JsonSlurperClassic

def jsonParse(def json) {
    new groovy.json.JsonSlurperClassic().parseText(json)
}
pipeline {
  agent any
  parameters {
      //server values
        string(name: 'remoteHost', defaultValue: '192.168.100.173', description: 'dns o ip del host')
        string(name: 'version_imagen_picking', defaultValue: 'latest', description: 'version de la applicacion')
        string(name: 'version_imagen_cac', defaultValue: 'latest', description: 'version de la applicacion')
        string(name: 'version_imagen_checkout', defaultValue: 'latest', description: 'version de la applicacion')
        string(name: 'version_imagen_hub', defaultValue: 'latest', description: 'version de la applicacion')
        string(name: 'version_imagen_login', defaultValue: 'latest', description: 'version de la applicacion')

  }
  environment {

  }
  stages {

    stage("picking"){
     
        steps {
            build job: "picking", parameters: [
              string(name: "remoteHost", value: "remoteHost"),
              string(name: "version_imagen", value:"version_imagen_picking")
            ]
        }
    }
  }
}  

