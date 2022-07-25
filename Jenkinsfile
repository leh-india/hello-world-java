pipeline {
    agent {
  label 'slave2'
    }
    stages {
        stage('Cloning Git repo') {
            steps {
                        git branch: 'main', credentialsId: 'git-chaitu', url: 'https://github.com/leh-india/hello-world-java.git'
                        sh 'ls -l'               
                    
            }           
        }
        stage('Maven Build') {
            steps {
                        sh 'mvn clean install'         
                    
            }           
        }
        stage('Java webapp Deploy') {
            steps {
                        sh 'cp /var/lib/jenkins/workspace/java-webapp-pipeline-slave/webapp/target/webapp.war /opt/apache-tomcat-10.0.22/webapps/'         
                    
            }           
        }
    }
}    
