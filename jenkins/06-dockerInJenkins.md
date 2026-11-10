


Docker commands must be available in Jenkins, to be able to run Docker commands. 
Can be done by attaching a volume to Jenkins from the host file. 
on the droplet we have docker command available.
Mound docker runtime dir from droplet to a container as a volume. 

To do that we need to kill current container, and mount additional volumes. 

Stop a currently running docker container 
the current data will be mounted to the new container, meaning all data, jobs, credentials will be mounted to the new container. 

all data is still there
<img width="1029" height="267" alt="Screenshot 2026-11-10 at 13 29 33" src="https://github.com/user-attachments/assets/5c4baf85-55be-4ec9-8a7d-a8beda843ae7" />

```
docker ps 
docker stop <ContainerID>
docker volume ls
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home -v /var/run/docker.so
ck:/var/run/docker.sock jenkins/jenkins:lts
```

```
docker ps
docker ecec -u 0 -it <containerID> bash 
curl https://get.docker.com > dockerinstall && chmod 777 dockerinstall && ./dockerinstall
```

Apply corret permissions for docker.sock file so commands can be run inside a container:

```
chmod 666 /var/run/docker.sock
```

## Build Docker image
Add execute shell build step 
```
docker build -t java-maven-app:1.0 .
```
run the build

<img width="721" height="120" alt="Screenshot 2026-11-10 at 13 55 55" src="https://github.com/user-attachments/assets/e3c75efc-1346-46c3-80b1-10d740f142bc" />

## Push image to docker hub
1. Create credentials
   Manage Jenkins -> Credentials (relative path: /manage/credentials/store/system/domain/_/
   add docker hub credentials

2. add build steps to push to hub
```
docker build -t tanjii/demo-app:jma-1.0 .
docker login -u $USERNAME -p $PASSWORD 
docker push tanjii/demo-app:jma-1.0 

```

select add secret text or files and provide username and password variable, select specific credentials


<img width="716" height="538" alt="Screenshot 2026-11-10 at 14 13 17" src="https://github.com/user-attachments/assets/608069ab-3868-4f71-bb49-4684cd30a03a" />
