Example:

```
$ faas-cli -action deploy -name faas-stamp -image alexellis2/faas-stamp:latest -fprocess "sh entry.sh"

$ curl -SL "https://avatars2.githubusercontent.com/u/8311848?v=4&s=460" > jock.jpg
$ curl localhost:8080/function/faas-stamp --data-binary @jock.jpg > john-new.jpg
```
