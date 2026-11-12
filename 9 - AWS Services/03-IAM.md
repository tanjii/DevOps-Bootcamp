# IAM

Identity and Access Management 

Lets us manage who access different services on AWS
Create users, usergropus, and assign their permissions. 

Root user is created by default and has unlimited privileges. can also delete the account. 

Admin user - should be created in addition to root user, but with less priviledges

System user - non human user, to push image, deploy...

## Users
These are human users or system users like applications you want to give access to AWS
use case:

## Groups
To group users that need same permissions, rather than individually giving them permissons. 

## Roles
We can grant AWS services access to other AWS Services
Policies can't be assigned to AWS Services directly, instead we assign a service role, and then we assign policies to that role. 
There is a role for each service, the role is going to have permissions or policy attached to it, and service will be able to do what is supposed to do. 
Steps: 
  1. Assign a role to AWS Service, EKS for example
  2. Attach policy to that role. 
 

