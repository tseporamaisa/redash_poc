#!/bin/bash -e

#create sample database
createdb -h localhost -p 5432 -U postgres dvdrental

#load data
pg_restore -U postgres -d dvdrental /var/dvdrental.tar
