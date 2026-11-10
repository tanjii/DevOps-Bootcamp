```

pipeline {   
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage("init") {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage("build jar") {
            steps {
                script {
                    gv.buildJar()

                }
            }
        }

        stage("build image") {
            steps {
                script {
                    gv.buildImage()
                }
            }
        }

        stage("deploy") {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }               
    }
} 
```


## ``post`` attribute 
execute some kind of script after all steps are done, eg emails the team or something like this

attributes  
1. always - no matter if the build failed or not
2. success - only relevant if build succeedes
3. failure

## Conditionals 
When we want to specify e.g. branch, if there are code changes...
example 

```
when { 
  expression {
  BRANCH_NAME =
  } 
}
```
