pipeline {
    agent any
	tools { 
      maven 'Maven3' 
      jdk 'OpenJDK8' 
    }
    stages {

        stage('Build') {
            steps {
                echo 'Building..'
		sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }	
}
