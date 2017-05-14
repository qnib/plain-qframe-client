# plain-qframe-client
Alpine container with tool installed (netcat) to interact with qframe plugins


## Send TCP event

```
$ docker run -ti --rm --name qframe-client qnib/plain-qframe-client send-tcp-event.sh 001 "My unixepoch is $(date +%s)"
```

## Emitt log line

```
$ docker run -ti --rm --name qframe-client qnib/plain-qframe-client loop-log.sh 5 WARN
```

## Log via TCP

```
$ docker run -ti --rm --name qframe-client qnib/plain-qframe-client send-tcp-log.sh WARN "My unixepoch is $(date +%s)"
```

