pipeline {
    agent any
    tools {
        maven 'maven'
        jdk 'java'
    }
    stages {
        stage('Git Clone') {
            steps {
                echo 'Clone Github Source code'
                git credentialsId: 'git', url: 'https://github.com/shmithun/MavenProject.git'
            }
        }
        stage('Maven Build') {
            steps {
                echo 'maven build step'
                sh 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy war file to Tomcat server'
//                 deploy adapters: [tomcat9(credentialsId: 'tomcat9', path: '', url: 'http://18.118.21.49:9090')], war: '**/*.war'
                deploy adapters: [tomcat9(credentialsId: 'tomcat9', path: '', url: 'http://18.118.21.49:9090')], onFailure: false, war: '*/*.war'
            }
        }
        stage('nexus') {
            steps {
                echo 'upload to nexus'
                nexusArtifactUploader artifacts: [[artifactId: 'myapp', classifier: '', file: 'target/myapp-1.0.0.war', type: 'war']], credentialsId: 'nexus3', groupId: 'com.mithun', nexusUrl: 'http://18.217.229.84:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'repository/devops/', version: '2.0.0'
        }
        }
       }
}
