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


