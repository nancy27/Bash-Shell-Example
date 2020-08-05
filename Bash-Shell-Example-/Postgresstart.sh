#! /bin/bash

echo "================Executing Postgress From Docker======================"
Container__Id=$(cat Postgres-docker-status.txt|grep "postgres"  | cut -d " " -f1)
docker stop $Container__Id
docker rm $Container__Id
docker run --name postgresqldb -v myvol:/var/lib/postgresql/data  -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres -e POSTGRES_DB=mydb -d postgres:latest

touch Postgres-docker-status.txt
docker ps > Postgres-docker-status.txt
docker exec -it postgresqldb bash

<< 'Comm'
su postgres

psql
\c mydb
\q to exit 
then give exit

# when i gave this it came out wrong \conninfo
Comm
