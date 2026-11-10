Back in the days, freestyle jobs were likned together to create pipeline. 

lots of limitations, config through UI, limited to input fileds or plugins, not suitable for complex

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
        
```
