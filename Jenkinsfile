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
        copyArtifacts 'master'
      }
    }
    stage('Build2') {
      agent {
        node {
          label 'lin'
        }

      }
      steps {
        archiveArtifacts(artifacts: '*.h', allowEmptyArchive: true)
      }
    }
    stage('Build3') {
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