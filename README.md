# Tell me a good titel for this
Run this command to get a shell to the jenkins slave.
```
docker run -it -u root --rm -v `pwd`/:/robot/ jenkins/jnlp-slave:3.23-1 bash
```

Inside the docker container navigate here:
```
cd /robot
```
and run the run.sh
```
./run.sh
```
