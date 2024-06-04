import groovy.json.JsonSlurperClassic

def jsonParse(def json) {
    new groovy.json.JsonSlurperClassic().parseText(json)
}
pipeline {
  agent any
  parameters {
      //server values
        string(name: 'remoteHost', defaultValue: '192.168.100.173', description: 'dns o ip del host')
        string(name: 'release_version_picking', defaultValue: 'release/v1.0.0', description: 'version de la applicacion')
        string(name: 'release_version_cac', defaultValue: 'release/v1.0.0', description: 'version de la applicacion')
        string(name: 'release_version_checkout', defaultValue: 'release/v1.0.0', description: 'version de la applicacion')
        string(name: 'release_version_hub', defaultValue: 'release/v1.0.0', description: 'version de la applicacion')
        string(name: 'release_version_login', defaultValue: 'release/v1.0.0', description: 'version de la applicacion')

  }
  stages {

    stage("picking"){
     
        steps {
            build job: "picking", parameters: [
              string(name: "remoteHost", value: "${remoteHost}"),
              string(name: "release_version", value:"${release_version_picking}")
            ]
        }
    }

    stage("cac"){
     
        steps {
            build job: "cac", parameters: [
              string(name: "remoteHost", value: "${remoteHost}"),
              string(name: "release_version", value:"${release_version_cac}")
            ]
        }
    }

    stage("checkout"){
     
        steps {
            build job: "checkout", parameters: [
              string(name: "remoteHost", value: "${remoteHost}"),
              string(name: "release_version", value:"${release_version_checkout}")
            ]
        }
    }

    stage("hub"){
     
        steps {
            build job: "hub", parameters: [
              string(name: "remoteHost", value: "${remoteHost}"),
              string(name: "release_version", value:"${release_version_hub}")
            ]
        }
    }

    stage("login"){
     
        steps {
            build job: "login", parameters: [
              string(name: "remoteHost", value: "${remoteHost}"),
              string(name: "release_version", value:"${release_version_login}")
            ]
        }
    }
  }
}  

