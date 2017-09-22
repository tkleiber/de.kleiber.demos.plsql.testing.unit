pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'git rev-parse --abbrev-ref HEAD'
        sh 'printenv'
        sh '''echo 1: ${BUILD_TAG}
if [ -z ${BUILD_TAG+x} ];
then
  echo "BUILD_TAG is unset";
else
  echo "BUILD_TAG is set to \'$BUILD_TAG\'";
fi'''
        sh '''echo 2:
/bin/bash de.kleiber.demos.plsql.testing.unit.datamodel.jpr/src/schemas/test/create.sh'''
        tool(name: 'Maven 3.2.5', type: 'maven')
      }
    }
  }
}