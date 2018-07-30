pipeline {
  agent any
  stages {
    stage('Build1') {
      steps {
        node(label: 'win')
        bat(script: 'copy /Y index.htm index.html', returnStatus: true)
      }
    }
    stage('Build2') {
      steps {
        archiveArtifacts(allowEmptyArchive: true, artifacts: '*.html')
        sshPublisher(masterNodeName: 'master')
      }
    }
  }
}