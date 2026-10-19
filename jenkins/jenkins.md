To deploy Jenkins: 
1. Create droplet
2. enable firewall: ssh 22, custom: 8080
3. ssh into instance
4. update and upgrade ubuntu:
   ```apt update
   apt upgrade```
6. install docker: 
  ``apt install docker.io``
7. Run a new container, mapping ports 8080 and 50000 of host machine to container, run it in detached mode (-d), create (or attaches) a persistent Docker named volume called jenkins_home, run the docker image: jenkins/jenkins:lts
   ```docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts```
8. check docker containers and copt yhe container name: ``docker ps``
9. open an interactive terminal session inside a running Docker container 
``docker exec -it a18a09340d89 bash``
copy the one time password: using cat
10. copy one time password, login to ip:8080 and go through setings

