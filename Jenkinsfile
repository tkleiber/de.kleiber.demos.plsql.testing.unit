pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'git rev-parse --abbrev-ref HEAD'
        sh '''echo 1: ${GIT_BRANCH}
if [ -z ${GIT_BRANCH+x} ];
then
  echo "GIT_BRANCH is unset";
else
  echo "GIT_BRANCH is set to '$GIT_BRANCH'";
fi'''
        sh '''echo 2:
/bin/bash de.kleiber.demos.plsql.testing.unit.datamodel.jpr/src/schemas/test/create.sh'''
      }
    }
  }
}
