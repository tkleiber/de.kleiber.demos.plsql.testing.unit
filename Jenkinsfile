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
        junit(testResults: '**/ut_xunit_reporter.xml', allowEmptyResults: true)
        publishHTML target: [
              allowMissing: false,
              alwaysLinkToLastBuild: false,
              keepAll: true,
              reportDir: '**',
              reportFiles: 'ut_coverage_html_reporter.html',
              reportName: 'utPLSQL Coveraga Report'
           ]
      }
    }
  }
  tools {
    maven '3.2.5'
    jdk '8u144'
  }
}
