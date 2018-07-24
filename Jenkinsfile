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
        archiveArtifacts(allowEmptyArchive: true, artifacts: '1-2-3')
      }
    }
  }
}