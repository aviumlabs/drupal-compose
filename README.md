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

### Foreground or Background Services


#### Windows Environment


To run the services in the background:


    PS > docker compose up -d


To run the services in the foreground:


    PS > docker compose up

    
To stop an individual service:


    PS > docker compose stop [drupal, db]


To start an individual service:


    PS > docker compose start [drupal, db]


To view the the logs of a background service:


    PS > docker logs -f <running_container_name>


To list the current running containers:


    PS > docker container ls


| CONTAINER ID   | IMAGE            | ...  | NAMES                        |
|----------------|------------------|------|------------------------------|
| nnn            | postgres:16.2... | ...  | \<application\_name\>-db-1   |
| nnn            | drupal/...    | ...  | \<application\_name\>-app-1  |



## PowerShell Info

Range of lowercase alphabet characters - [char]97..[char]122
Range of uppercase alphabet characters - 



### Docker Images


- Drupal image: 
- PostgreSQL image: postgres:16.2-alpine3.19


[git-from-template]: https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template
