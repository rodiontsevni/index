pipeline {
  agent any
  stages {
    stage('Build1') {
      steps {
        bat(script: 'copy /Y index.htm index.html', returnStatus: true)
      }
    }
    stage('Build2') {
      steps {
        archiveArtifacts(allowEmptyArchive: true, artifacts: '*.html')
        node(label: 'lin')
        sh 'docker build -t visio/dockerfile'
      }
    }
  }
}