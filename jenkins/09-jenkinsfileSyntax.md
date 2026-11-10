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

## environmental variables
important concept
What variables are available? 
List of all env.var: 
<jenkinsURL>/env-vars.html/

### can define own env.var: 

add a code block: 

```
environment {
    NEW_VERSION = '1.3.0'
}
```

call it in a script: 

```
echo "Building version ${NEW_VERSION}"
```


### Credentials
define cred in Jenkins, and use that in jenkins file
in env. block add: 

```
SERVER_CREDENTIALS = credentials('<credentialID>')
```




#### Plugins
These plugins must be added in Jenkins in order to create credentials and use them in jenkins file:
Credentials Binding
Credentials Plugin


## Tools 
defines tools - gradle, maven, jdk


```
tools {
gradle
jdk
maven "maven-3.9"
}
```

## Parameters 

### String: 
name, default value, descritpion
select e.g. which version to deploy

```
parameters {
    string(name: 'VERSION', defaultValue: '', description: 'Version to deploy')
}


### choice
name, choices, description
```
choice {
    name: 'VERSION', choices: ['1.1.0', '1.2.0'], description: 'Version to deploy'
}
```


### boolean param
to skip a certain stage on some builds


# Must be enclosed in double quotes ""
