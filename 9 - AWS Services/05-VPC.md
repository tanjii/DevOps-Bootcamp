## Virtual Private Cloud

It is own isolated network in cloud for each specific region. 

VPC isolates a space where you are creating your virtual instances, servers, DBs, from different services. All these services are isolated from others, 

This is a virtual representation of network infrastructure. 

Nowadays all setup is moved to cloud, which includes setup of servers, firewall and network configuration, VPS is representation of this. 

### Subnets
Subnetworks
components, or suybnetworks of VPS
It is a private network inside a network. 

There are subnets:
1. Private - external traffic can't enter the subnet, instances are unavailable from external, but applications inside VPS can communicate between (e.g For DB)
2. Public - allows external traffic 

Firewall settings makes it eather public and/or private subnet. 
