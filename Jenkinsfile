pipeline {
    agent any
	environment{
		DOCKERHUB_CREDENTIALS = credentials('yash-docker')
	}
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
	stage('Build docker image'){
		steps{
			sh 'docker build -t yashvishnoi1001/demo:$BUILD_NUMBER .'
		}
	}
	stage('login to dockerhub'){
                steps{
                        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --pasword-stdin'
                }
        }
	stage('push image'){
                steps{
                        sh 'docker push yashvishnoi1001/demo:$BUILD_NUMBER'
                }
        }

    }	
post {
	always {
	sh 'docker logout'
}
}
}
