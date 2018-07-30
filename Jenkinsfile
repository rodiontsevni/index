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
      }
    }
    stage('Build2') {
      agent {
        node {
          label 'lin'
        }

      }
      steps {
        archiveArtifacts(allowEmptyArchive: true, artifacts: '*.html')
      }
    }
    stage('') {
      agent {
        dockerfile {
          filename 'dockerfile'
        }

      }
      steps {
        archiveArtifacts(artifacts: '*.tar', allowEmptyArchive: true)
      }
    }
  }
}