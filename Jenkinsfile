pipeline {
    agent { label 'ubuntu_1' }

    stages {
        stage('Docker version') {
            steps {
                sh "echo $USER"
                sh 'docker version'
            }
        }
        stage('Delete workspace before build starts') {
            steps {
                echo 'Deleting workspace'
                deleteDir()
            }
        }
        stage('Checkout') {
            steps{
                git branch: 'main',
                    url: 'https://github.com/nkrchk/jenkins.git'        
                }
        }
        stage('Test') {
            steps{
                dir('Dockerfile') {
                    sh "ls -la "
                    sh "pwd"
                }
                    sh "ls -la "
                    sh "pwd"
            }
        }
        stage('Build docker image') {
            steps{
                dir('v') {
                    sh 'docker build -t nkrchk/jenkins-images:0.1 .'
                }
            }
        }
        stage('Push docker image to DockerHub') {
            steps{
                withDockerRegistry(credentialsId: 'dockerhub-cred-nkrchk', url: 'https://index.docker.io/v1/') {
                    sh '''
                        docker push nkrchk/jenkins-images:0.1
                    '''
                }
            }
        }
    }
}