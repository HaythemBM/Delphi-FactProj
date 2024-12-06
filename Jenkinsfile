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

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: '**/*.exe', allowEmptyArchive: true
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully.'
        }
        failure {
            echo 'Build failed.'
        }
    }
}
