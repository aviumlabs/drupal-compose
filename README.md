# A Drupal Compose Repo


---


This is a template repo and it can be utilized using the following pattern. 


## Creating a Repository From this Template


[GitHub Documentation] [git-from-template]


### Create a New Repository on GitHub.com


- Go to https://github.com/aviumlabs/drupal-compose  
- Select Use this template  
- Select Create a new repository  


Repository name: __<project_name>__  
Description: __project_description__    
Public  


- Select 'Create repository from template'


Generating your repository...


### Create and Clone a New Repository with GitHub CLI


    gh repo create <application-name> -c -d "Application description" --private/public \
    -p aviumlabs/drupal-compose 


    $ cd <application-name>


Created repository \<github\_userid\>\<application\_name\>  on GitHub  
Cloning into '\<application\_name\>'...  


__Note__: When dedicing on an application name, use - instead of _ when 
separating words. Experienced some weird behavior with Docker Desktop and 
docker compose exec when the project has an _ in the application name. 

When the application is launched with the prepare script and the application 
name contains an _ , the docker compose exec command will not work. Restarting 
the docker environment resolves the issue, but it's not a good first time 
user experience.

---


## Post Installation Setup 


After creating a new project, there is an included script for creating the 
environment and database secret files. 


### Linux, macOS


    ./prepare -i


### Windows


    .\setup.ps1 -Init 


## Runtime


After the environment has been configured Drupal docker services will be 
started automatically if docker is running. Otherwise, start docker and 
use the commands below to start the docker Drupal services.

Once the Drupal services are running, please see the docs/runtime-guide.md for 
further information on configuring the Drupal instance.


## Additional Docker Information 


To run the services in the background:


    docker compose up -d


To run the services in the foreground:


    docker compose up

    
To stop an individual service:


    docker compose stop [drupal, db]


To start an individual service:


    docker compose start [drupal, db]


To view the the logs of a background service:


    docker logs -f <running_container_name>


To list the current running containers:


    docker compose ps

or

    docker container ls


To list all containers:


    docker container ls -a


### Revision Tag 0.0.3


| CONTAINER ID   | IMAGE                                | ... | NAMES           |
|----------------|--------------------------------------|-----|-----------------|
| nnn            | aviumlabs/drupal:latest-bookworm     | ... | \<...drupal-1   |
| nnn            | postgres:16.2-alpine3.19             | ... | \<...db-1       |


### Revision Tag 0.0.2


| CONTAINER ID   | IMAGE                                      | ... | NAMES         |
|----------------|--------------------------------------------|-----|---------------|
| nnn            | aviumlabs/nginx-drupal-proxy:latest-alpine | ... | \<...www-1    |
| nnn            | aviumlabs/drupal:latest-alpine             | ... | \<...drupal-1 |
| nnn            | postgres:16.2-alpine3.19                   | ... | \<...db-1     |


### Revision Tag 0.0.1


| CONTAINER ID   | IMAGE                                | ... | NAMES           |
|----------------|--------------------------------------|-----|-----------------|
| nnn            | drupal:10.2.5-php8.3-apache-bookworm | ... | \<...drupal-1   |
| nnn            | postgres:16.2-alpine3.19             | ... | \<...db-1       |


## Docker Images


- Drupal image: aviumlabs/drupal:latest-bookworm
- PostgreSQL image: postgres:16.2-alpine3.19


[git-from-template]: https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template


## Install a Drupal Module


    docker compose exec drupal composer require '<module>'
