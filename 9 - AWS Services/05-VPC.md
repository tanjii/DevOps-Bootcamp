## Virtual Private Cloud

It is own isolated network in cloud for each specific region. 

VPC isolates a space where you are creating your virtual instances, servers, DBs, from different services. All these services are isolated from others, 

This is a virtual representation of network infrastructure. 

Nowadays all setup is moved to cloud, which includes setup of servers, firewall and network configuration, VPS is representation of this. 

### Subnets
Subnetworks
components, or suybnetworks of VPS
It is a private network inside a network. 

There are different subnets:
1. Private - external traffic can't enter the subnet, instances are unavailable from external, but applications inside VPS can communicate between (e.g For DB)
2. Public - allows external traffic 

Firewall settings makes it eather public and/or private subnet. 

### IP address

#### Private IPs

In VPC there is a range of internal IPs
Range is defined by default, and it can be changed. 
It is for traffic inside of the VPS, not for external traffic. It allows services to talk to each other. 

#### Public IP

We need to assign public IP if we want external access
Internet gateway connects the VPC to the outside internet

## Controling Access

Secure components
Control Access to VPC
Control access to individual server instances
Basically firewall config

This is flexible and granular
Most of the things are configured by default.

### Security
Access can be configured on the:

1. subnet level -> This is done through NACL - Network Access Control List 
Which ports can be access for which subnet. 

2. Individual instance level -> Security groups


