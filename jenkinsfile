pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/HaythemBM/Delphi-FactProj.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    echo 'Build Start...'
                    bat '"%WORKSPACE%\\Utils\\build.bat" "%WORKSPACE%"'
                    echo 'Build End.'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    echo 'Test Start...'
                    bat '"%WORKSPACE%\\Utils\\run.bat"'
                    echo 'Test End.'
                }
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: '**/*.exe', allowEmptyArchive: true
            }
        }
    }

    post {
        success {
            echo 'Build and Test completed successfully.'
        }
        failure {
            echo 'Build or Test failed.'
        }
    }
}
