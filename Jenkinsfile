pipeline {
       agent {
        node {
            label 'jenkins-slave-node'
        }
    }
   
    environment {
        PATH = "/opt/apache-maven-3.9.6/bin:$PATH"               
    }
    stages {
        stage("build stage"){
            steps {
                echo "----------- build started -----------"
                sh 'mvn clean package -Dmaven.test.skip=true'
                echo "----------- build completed ---------------"
            }
        }
    }
 }


