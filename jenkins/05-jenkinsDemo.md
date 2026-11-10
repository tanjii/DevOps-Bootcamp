Create a new Job: 
Jenkins UI -> Create Job, or 
Jenkins UI -> New Item

Name the new job
  my-job


Type of jobs:   
1. Freestyle - simplest, most basic job in Jenkins, easy to set up and configure, can be used for simple, small scale projects
   * can be used to test application, build it and push it to repository
   * lacks advanced features, can be considered primitive. 
2. Pipeline - orchestrates long running activities that can span multiple build agents. For building pipelines and organizing complex activities
3. Multi branch Pipeline - For projects that need large number of different configs, such as testing multiple envs, platform specific builds etc.


Create d a job that verifies version of npm and maven
<img width="1511" height="521" alt="Screenshot 2026-11-10 at 12 12 29" src="https://github.com/user-attachments/assets/90f9b208-ca22-4607-97e2-d65ec4445710" />


Difference between how tools were installed:
Installing a tool directly on ther Jenkins server takes more effort, it is more flexible. 
Plugin gives UI, with predefined fields, while tool directly installed on Jenkins server gives us CLI, which means we can script something easily using commands

Configuring additional tools

Install nodeJS in Jenkins UI -> Manage Jenkins, plugins, nodeJS,
Configure it: Manage -> Tools 
Execute NodeJS script is now awailable in Jobs

