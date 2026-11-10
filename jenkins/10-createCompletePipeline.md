def gv

pipeline {
    agent any
    tools {
        maven 'maven-3.10'
    }
    stages {
        stage('increment version') {
            steps {
                script {
                    echo 'incrementing app version...'
                    sh 'mvn build-helper:parse-version versions:set \
                        -DnewVersion=\\\${parsedVersion.majorVersion}.\\\${parsedVersion.minorVersion}.\\\${parsedVersion.nextIncrementalVersion} \
                        versions:commit'
                    def matcher = readFile('pom.xml') =~ '<version>(.+)</version>'
                    def version = matcher[0][1]
                    env.IMAGE_NAME = "$version-$BUILD_NUMBER"
                }
            }
        }
        stage('build app') {
            steps {
                script {
                    echo 'building the application...'
                    sh 'mvn clean package'
                }
            }
        }
        stage('build image') {
            steps {
                script {
                    echo "building the docker image..."
                    withCredentials([usernamePassword(credentialsId: 'dockerHub-credentials', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                        sh "docker build -t tanjii/demo-app:${IMAGE_NAME} ."
                        sh 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
                        sh "docker push tanjii/demo-app:${IMAGE_NAME}"
                    }
                }
            }
        }
        stage('deploy') {
            steps {
                script {
                    echo 'deploying docker image...'
                }
            }
        }
        stage('commit version update') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'GitHub', passwordVariable: 'GIT_TOKEN', usernameVariable: 'GIT_USER')]) {
                        sh '''
                            git config user.email "jenkins@example.com"
                            git config user.name "jenkins"

                            git add .
                            git commit -m "ci: version bump" || echo "Nothing to commit"

                            git -c credential.helper='!f() { echo "username=${GIT_USER}"; echo "password=${GIT_TOKEN}"; }; f' \
                                push https://github.com/tanjii/Jenkins.git HEAD:jenkins-jobs
                        '''
                    }
                }
            }
        }
    }
}
