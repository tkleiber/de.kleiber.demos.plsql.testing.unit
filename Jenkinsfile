pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'git rev-parse --abbrev-ref HEAD'
        sh '''echo test
./de.kleiber.demos.plsql.testing.unit.datamodel.jpr/src/schemas/test/create.sh'''
      }
    }
  }
}
