Can be installed:   
1. Via UI, installing plugin
2. Directly on the server, inside a container install the tools to execute commands

Installing via CLI

check running containers
``docker ps`` 
enter a container as a root user
``docker exec -u 0 -it <containerID> bash``

```apt update```

```apt install curl```

Curl to install node.js and npm
```curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh```
execute the script: ``bash nodesource_setup.sh``
install nodejs ``apt install nodejs``

Verify the versions: 
npm -v
node -v

<img width="229" height="102" alt="Screenshot 2026-10-19 at 17 07 59" src="https://github.com/user-attachments/assets/3b849c60-78b3-46c0-8328-3d08e25077d0" />

