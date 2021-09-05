pipeline {
  agent {
    node {
      label 'docker-slave'
    }

  }
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/lidorg-dev/node-hello.git', branch: 'master', changelog: true, poll: true)
      }
    }

  }
}