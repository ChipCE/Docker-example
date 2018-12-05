#!/bin/bash
#sqlpasswd=$(docker logs mysql-dev 2>&1 | grep GENERATED | grep -P ":\s.+" | cut -c 2- )
sqlpasswd=$(docker logs mysql-dev 2>&1 | grep GENERATED | grep -oP ":\s.+" | cut -c 3-)
echo "$sqlpasswd"
docker exec -it mysql-dev mysql --password=$sqlpasswd --user=root