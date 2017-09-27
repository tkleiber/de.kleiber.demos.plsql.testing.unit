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
          reportDir: 'de.kleiber.demos.plsql.testing.unit.plsql/target/results/utplsql',
          reportFiles: 'ut_coverage_html_reporter.html',
          reportName: 'utPLSQL Coveraga Report'
        ]
        junit(testResults: '**/results/rspec/test/results.xml', allowEmptyResults: true)
        publishHTML target: [
          allowMissing: false,
          alwaysLinkToLastBuild: false,
          keepAll: true,
          reportDir: 'de.kleiber.demos.plsql.testing.unit.plsql/target/results/rspec/coverage',
          reportFiles: 'index.html',
          reportName: 'rSpec Coveraga Report'
        ]
      }
    }
  }
  tools {
    maven '3.2.5'
    jdk '8u144'
  }
}
