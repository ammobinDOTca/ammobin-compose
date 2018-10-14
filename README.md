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
ES_URL=<url to your elasticsearch cluster>
ES_USER=<http username for elasticsearch>
ES_PASSWORD=<http password for elasticsearch>
```
3. ```docker-compose up -d```

note: this will required access to port 80 (HTTP) and 443 (HTTPS)

## how to update existing deployment
1. ```docker-compose pull```
2. ```docker-compose up -d```

## how to see how the site is actually doing
1. vist stats.ammobin.ca with STATSUSER + STATSPASS
