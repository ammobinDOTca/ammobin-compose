# ammobin-compose
=====

How I run all of ammobin.ca

## getting started
1. create ```.env``` with ```
EMAIL=<email to receive messages from lets encrypt>
wrapapi_key=SOME_API_KEY
```
2. ```docker-compose up -d```

## how to update existing deployment
1. ```docker-compose pull```
2. ```docker-compose up -d```

## how to see how the site is actually doing
1. install [goaccess](https://goaccess.io/)
2. ```goacess ./caddy-logs/<client|api>.log```
