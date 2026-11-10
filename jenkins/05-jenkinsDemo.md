## Create a new Job: 
Jenkins UI -> Create Job, or 
Jenkins UI -> New Item

Name the new job
  my-job


## Type of jobs:   
1. Freestyle - simplest, most basic job in Jenkins, easy to set up and configure, can be used for simple, small scale projects
   * can be used to test application, build it and push it to repository
   * lacks advanced features, can be considered primitive. 
2. Pipeline - orchestrates long running activities that can span multiple build agents. For building pipelines and organizing complex activities
3. Multi branch Pipeline - For projects that need large number of different configs, such as testing multiple envs, platform specific builds etc.


Created a job that verifies version of npm and maven
<img width="1511" height="521" alt="Screenshot 2026-11-10 at 12 12 29" src="https://github.com/user-attachments/assets/90f9b208-ca22-4607-97e2-d65ec4445710" />


### Difference between how tools were installed:
Installing a tool directly on ther Jenkins server takes more effort, it is more flexible. 
Plugin gives UI, with predefined fields, while tool directly installed on Jenkins server gives us CLI, which means we can script something easily using commands

### Configuring additional tools

Install nodeJS in Jenkins UI -> Manage Jenkins, plugins, nodeJS,
Configure it: Manage -> Tools 
Execute NodeJS script is now awailable in Jobs


## Configure Git Repo
Jenkins UI -> my-job -> Configure -> Source code management -> Git
Add credentials and run the build
<img width="1896" height="911" alt="Screenshot 2026-11-10 at 12 36 27" src="https://github.com/user-attachments/assets/3f00700a-f354-43bf-923d-084c051bd212" />


When you have a job that is connected to a git repo, it will checkout the code locally in order to be able to run commands against that repo. So if we are running tests, it is going to have latest code locally and test it. Same with build, its building appls locally

This can be checked in Jenkins server: 

```docker ps
docker exec -it <containerID> bash
ls /var/jenkins_home/jobs £each job gets a folder here, this is a tracker of all jobs
ls /var/jenkins_home/workspace/my-job #this is where the git repo is checked out```

change my-job to run the repo script from specific branch and running the script by changing the build configuration.
edit build steps:

```
chmod +x freestyle-build.sh
./freestyle-build.sh
```


## Run application and run test

Create new application, name it java-maven-build
Add maven build steps
Test
Package
