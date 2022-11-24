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
                deploy adapters: [tomcat9(credentialsId: 'tomcat9', path: '', url: 'http://18.118.21.49:9090')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
