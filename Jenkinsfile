pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'git symbolic-ref --short HEAD'
      }
    }
  }
}