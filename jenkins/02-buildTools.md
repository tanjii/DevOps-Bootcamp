Build tools can be installed:   
1. Via UI, installing plugin -
Jenkins -> Manage Jenkins -> Tools -> Add Maven installations
   
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
install nodejs:
```apt install nodejs```

Verify the versions: 
npm -v
node -v

<img width="229" height="102" alt="Screenshot 2026-10-19 at 17 07 59" src="https://github.com/user-attachments/assets/3b849c60-78b3-46c0-8328-3d08e25077d0" />

Check linux distribution installed: 
```cat /etc/issue```

Install Stage View Plugin
This shows the process of each stage, which means all defined stages will be displayed as separate stages in the UI. This helps us see what stage failed.
To Install, go to Jenkins -> Manage Jenkins -> Plugins -> Available plugins -> Pipeline: Stage view -> Install with Restart, and restart the container. 

```docker ps -a #shows all containers, including the ones that are not running```

```docker start <containerID>```

