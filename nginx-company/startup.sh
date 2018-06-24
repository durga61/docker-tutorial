sudo docker network create -d overlay comnet  


sudo docker service create --name helloapp --replicas 3 -p 8080:8080 --network comnet durga61/company:1.0

sudo docker service create --name nginx-company --replicas 1 -p 80:80 --network comnet durga61/nginx-compapp:2.0
