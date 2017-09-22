pipeline {
  agent {
    node {
      label 'oracle'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean verify'
        junit(testResults: '**/ut_sonar_test_reporter.xml', allowEmptyResults: true)
      }
    }
  }
  tools {
    maven '3.2.5'
    jdk '8u144'
  }
}