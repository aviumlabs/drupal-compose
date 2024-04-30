# A Drupal Compose Repo


---


This is a template repo and it can be utilized using the following pattern. 


## Creating a Repository From this Template


[GitHub Documentation] [git-from-template]


### Example Project


#### Create a New Repository on GitHub.com


- Go to https://github.com/aviumlabs/drupal-compose
- Select Use this template
- Select Create a new repository


Repository name: __<project_name>__  
Description: __project_description__  
Public  


- Select 'Create repository from template'


Generating your repository...


### Create and Clone a New Repository with GitHub CLI


    $ gh repo create <application_name> -c -d "Application description" --public \
      -p aviumlabs/drupal-compose 


Created repository \<github\_userid\>\<application\_name\>  on GitHub  
Cloning into '\<application\_name\>'...  


---


## Post Installation Setup 


After creating a new project, there is an included script for creating the 
environment and database secrets files. 


### Linux, macOS


    $ ./prepare -i


### Windows


    PS > 


### Foreground or Background Services



To run the services in the background:


    $ docker compose up -d


    PS > docker compose up -d



To run the services in the foreground:


    $ docker compose up

    PS > docker compose up

    
To stop an individual service:


    $ docker compose stop [drupal, db]

    PS > docker compose stop [drupal, db]


To start an individual service:


    PS > docker compose start [drupal, db]


To view the the logs of a background service:


    PS > docker logs -f <running_container_name>


To list the current running containers:


    $ docker compose ps

    PS > docker container ls



| CONTAINER ID   | IMAGE                                | ... | NAMES           |
|----------------|--------------------------------------|-----|-----------------|
| nnn            | drupal:10.2.5-php8.3-apache-bookworm | ... | \<...drupal-1   |
| nnn            | postgres:16.2-alpine3.19             | ... | \<...db-1       |



## PowerShell Info

Range of lowercase alphabet characters - [char]97..[char]122
Range of uppercase alphabet characters - 



### Docker Images


- Drupal image: 
- PostgreSQL image: postgres:16.2-alpine3.19


[git-from-template]: https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template
