pipeline {
    agent any
    
    parameters {
        string(name: 'COMMIT', defaultValue: 'main', description: 'Branch/Commit hash', trim: true)
    }

    stages {
        stage('Cloning our Git') {
            steps {
                    script {
                        git branch: 'main', url: 'https://github.com/mustafaabdelbadea/Simple-nodejs-app'
                        if (COMMIT != 'main') {
                            try {
                                sh 'git checkout $COMMIT'           
                            }
                            catch (exc) {
                                echo "Commit: $COMMIT not found!"
                                throw exc
                            }
                        }
                    }

            }
        }   

        stage('Build image') {
            steps {
                sh 'docker build  --no-cache -t mustafaabdelbadea/gcp-nodejs:$BUILD_NUMBER  .  '
            }
        }
    
        stage('push') {
            steps {
                        withCredentials([usernamePassword(credentialsId: 'Docker-auth', passwordVariable: 'MYPASS', usernameVariable: 'MYUSER')]) {
                        sh 'docker login --username $MYUSER --password $MYPASS'
                        sh 'docker push mustafaabdelbadea/gcp-nodejs:$BUILD_NUMBER'
                    }
            }
        }

        stage('Update k8s with current build number') {
            steps {
                sh "sed -i 's/tagname/$BUILD_NUMBER/g' kubernetes/1-app-deploy.yml"
                sh "cat kubernetes/1-app-deploy.yml"
            }
        }

        stage('Apply kubernetes changes') {
            steps {
                sh 'chmod 555 ./k8s.sh '
                sh './k8s.sh'
            }
        }


    }
}