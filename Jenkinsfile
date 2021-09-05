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

    stage('Build Docker Image') {
      steps {
        sh 'docker build . -t node-hello:$BUILD_ID'
      }
    }
    
    stage('Push Docker Image') {
      steps {
        withDockerRegistry(credentialsId: 'docker-hub-creds', url: 'https://registry-1.docker.io/v2/') {
           sh '''docker tag node-hello:$BUILD_ID noamblu1/node-hello:$BUILD_ID && docker tag node-hello:$BUILD_ID noamblu1/node-hello:latest && docker push noamblu1/node-hello:$BUILD_ID && docker push noamblu1/node-hello:latest'''
         }
      }
    }

  }
}
