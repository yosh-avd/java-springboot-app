pipeline {
    agent {
        node {
            label 'jenkins-slave-node'
        }
    }
    
    tools {
        // Define the 'Maven' tool with the desired version
        maven 'Maven'
        // Define the 'SonarQube Scanner' tool with the desired version
        scannerHome 'SonarQube Scanner'
    }

    stages {
        stage("Build") {
            steps {
                echo "------------ Build started ---------------"
                sh 'mvn clean package -Dmaven.test.skip=true'
                echo "------------ Build completed -------------"
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('sonar-server-meportal') {
                    script {
                        // Use the SonarQube Scanner tool
                        def scannerHome = tool 'SonarQube Scanner'
                        sh "${scannerHome}/bin/sonar-scanner"
                    }
                }
            }
        }
    }
}
