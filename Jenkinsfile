pipeline {
  agent any
  stages {
    stage('Build1') {
      agent {
        node {
          label 'win'
        }

      }
      steps {
        bat(script: 'copy /Y index.htm index.html', returnStatus: true)
        archiveArtifacts(artifacts: '*.html', allowEmptyArchive: true)
      }
    }
    stage('error') {
      agent {
        dockerfile {
          filename 'dockerfile'
        }

      }
      steps {
        node(label: 'lin')
        archiveArtifacts(artifacts: '*.tar', allowEmptyArchive: true)
      }
    }
  }
}