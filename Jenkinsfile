pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                git credentialsId: 'git-credentials', url: 'https://github.com/olehtsyupak/jenkins-fundamentals.git'
            }
        }

        stage('Check logs for errors') {
            steps {
                sh 'chmod +x check_logs.sh'
                script {
                    def output = sh(returnStdout: true, script: './check_logs.sh')
                    echo output
                }
            }
        }
    }
}

