## Running service locally
---

### Prerequisites

1. [install Docker](https://docs.docker.com/engine/install/)

2. [install docker-compose](https://docs.docker.com/compose/install/)

> **_Note:_** if using Mac, docker desktop for Mac includes docker-compose out of the box so no need to install separately.

### Run through setup script

1. clone this repo

```bash
   git clone https://github.com/tseporamaisa/redash_poc.git
```   
2. change into project directory

```bash
   cd redash_poc
```
3. run redash service

```bash
   bash setup.sh start
```

> **_Note:_** above comand runs redash on http://127.0.0.1:8080       
   


## Initial Setup
---   

### Setup Admin user

- In your browser go to http://127.0.0.1:8080 
- Names, email, organisation do not have to be real just fill in anything for testing
- Enter password (must be at least 6 characters long)

### Connect data source    
The deploymennt includes a sample database for testing, however you will have to manually connect to it.
In the Dashboards home screen click on "Connect a Data Source". Under type, select PostgreSQL as your source. Configure the connection with the following settings:  

- Name: sample db
- Host: postgres
- Port: 5432
- User: postgres
- Password: redash
- Database Name: dvdrental    
   
clisk create and test the connection. you should get a "Success" massage

### Sample database ERD     

![ERD](./redash/dvd-rental-sample-database-diagram.png?raw=true)     
    
## Useful links   
---    
- [Getting started with redash guide](https://redash.io/help/user-guide/getting-started)    
- [Creating dashboards guide](https://redash.io/help/user-guide/dashboards)
- [Intro video with walk through](https://www.youtube.com/watch?v=U32yv9e9HOI&t=419s)

## Stopping the service
---   
    
### stop service without clean-up   
```bash
   bash setup.sh stop 
```    
### stop service and clean-up   
```bash
   bash setup.sh cleanup
```
> **_Note:_** above command will remove all volumes, delete images and dangling stuff defined by the compose file