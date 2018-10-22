# FHQ Jury Ad (game example)

## Requriments

* docker
* docker-compose
* git

## Short manual for run

1. Clone the project
```
git clone https://github.com/freehackquest/fhq-jury-ad-jury-example /opt/game-example
```

2. First you need build docker with jury

```
cd /opt/game-eample/docker_jury
./build_docker.sh
```

3. Start docker compose: 
```
cd /opt/game-example && docker-compose up
```

## Usefull command for cleanup

```
$ cd /opt/game-eample
$ sudo docker-compose rm
```

## How to configure your checkers

All dependencies needs for checkers please write to docker_jury/Dockerfile

After change Dockerfile:

```
$ cd docker_jury
$ ./clean_docker.sh
$ ./build_docker.sh
```

* Folder `jury.d` will be mapped inside docker jury `/usr/share/fhq-jury-ad/jury.d`
* So it's will be helpful for develop and test checker's code
* Please put your checker to directory `jury.d/conf.d/%service_name%`
* Edit this file: `jury.d/conf.d/conf.ini` (you can configure relative path to checker and timewait)

## Don't foget

* configuration for game start/end
* inside checkers please use absolute paths
* any checker file must be executable (`chmod +x checker.sh`)
* logo teams in this folder: `jury.d/html/images/teams`
* Directory with logs: `jury.d/logs`
* Directory with scoreboard page `jury.d/html`
* Default port of scroboard: `8080`
* Acceptance of flag: `$ curl http://192.168.1.6:8080/flag?teamid=1&flag=123e4567-e89b-12d3-a456-426655440000`
