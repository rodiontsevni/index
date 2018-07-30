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
        archiveArtifacts(allowEmptyArchive: true, artifacts: '*')
      }
    }
    stage('Build2') {
      agent {
        node {
          label 'lin'
        }

      }
      steps {
        copyArtifacts(projectName: 'master', target: './')
      }
    }
    stage('Build3') {
      agent {
        dockerfile {
          filename 'dockerfile'
        }

      }
      steps {
        readFile 'index.html'
        archiveArtifacts(artifacts: '*.tar', allowEmptyArchive: true)
      }
    }
  }
}