# ammobin-compose

How I run all of ammobin.ca

## getting started
1. install docker + docker-compose
2. create ```.env``` with 
```
EMAIL=<email to receive messages from lets encrypt>
wrapapi_key=<SOME_API_KEY>
STATSPASS=<some good password>
STATSUSER=<some good username>
```
3. ```docker-compose up -d```

note: this will required access to port 80 (HTTP) and 443 (HTTPS)

## how to deploy as swarm service
1. follow steps 1 and 2 above
2. allow port 6379 and 8086 on ALL nodes (ie: ufw allow ...)
3. ```docker stack deploy -c docker-compose.yml ammobin```


## how to update existing deployment
1. ```docker-compose pull```
2. for single node:```docker-compose up -d```. for multi node: repeat step3 above

## how to see how the site is actually doing
1. vist stats.ammobin.ca with STATSUSER + STATSPASS
