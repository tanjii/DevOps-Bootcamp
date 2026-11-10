## Pipeline jobs
Suitable for CI/CD
Pipeline as a code 

### Required fields

pipeline - must be top level
agent - where to execute
stages - where the work happens

Example:

```
pipeline {   
    agent any
    stages {
        stage("test") {
            steps {
                script {
                    echo "Testing the application...."
                }
            }
        }
        

        
