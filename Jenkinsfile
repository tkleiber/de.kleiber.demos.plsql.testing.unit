pipeline {
  agent none
  stages {
    stage('Test') {
      steps {
        echo 'Test'
        sh 'git symbolic-ref --short HEAD'
      }
    }
  }
}