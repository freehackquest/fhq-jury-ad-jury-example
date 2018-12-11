# fhq-jury-ad v0.1.0 (ctf game example)

Current version: v0.1.0

## Requriments

* docker
* docker-compose
* git

## Short manual for run

1. Clone the project
```
$ git clone https://github.com/freehackquest/fhq-jury-ad-jury-example ~/ctfgame0
```

2. First you need build docker with jury

```
$ cd ~/ctfgame0/docker_jury
$ sudo ./build_docker.sh
```

3. Start docker compose: 
```
$ cd ~/ctfgame0 
$ sudo docker-compose up
```

## Usefull command for cleanup

```
$ cd ~/ctfgame0
$ sudo docker-compose rm
```

## How to configure your checkers

All dependencies needs for checkers please write to `docker_jury/Dockerfile`

After change Dockerfile:

```
$ cd ~/ctfgame0/docker_jury
$ ./clean_docker.sh
$ ./build_docker.sh
```

* Folder `jury.d` will be mapped inside docker jury `/usr/share/fhq-jury-ad/jury.d`
* So it's will be helpful for develop and test checker's code
* Please put your checker to directory `~/ctfgame0/jury.d/conf.d/%service_name%`
* Edit this file: `~/ctfgame0/jury.d/conf.d/conf.ini` (you can configure relative path to checker and timewait)
* Checher must use fullpath `/usr/share/fhq-jury-ad/jury.d` inside in processing

## Don't foget

* configuration for game start/end
* inside checkers please use absolute paths
* any checker file must be executable (`chmod +x checker.sh`)
* logo teams in this folder: `~/ctfgame0/jury.d/html/images/teams`
* Directory with logs: `~/ctfgame0/jury.d/logs`
* Directory with scoreboard page `~/ctfgame0/jury.d/html`
* Default port of scroboard: `8080`
* Acceptance of flag: `$ curl http://192.168.1.6:8080/flag?teamid=1&flag=123e4567-e89b-12d3-a456-426655440000`

## Original source and more information

All sources you can find in repository:

[https://github.com/freehackquest/fhq-jury-ad](https://github.com/freehackquest/fhq-jury-ad)
