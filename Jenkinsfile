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
        copyArtifacts(projectName: 'master', target: '123')
      }
    }
    stage('Build3') {
      agent {
        dockerfile {
          filename 'dockerfile'
        }

      }
      steps {
        sh 'sudo docker save -o ${WORKSPACE}/${BUILD_NUMBER}.tar 6a4d5b601213b20ce2a03a7502eb742b9f98e0c0'
        archiveArtifacts(artifacts: '*.tar', allowEmptyArchive: true)
      }
    }
  }
}