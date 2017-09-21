This uses ImageMagick, [docs here](http://www.imagemagick.org/Usage/annotating/#wmark_image)

## Pre-reqs:

Setup OpenFaaS including the CLI via:

* [OpenFaaS](https://www.openfaas.com/)

## Example:

Deploy via YAML:

```
$ faas-cli deploy -f stack.yml"
```

Or via parameters:

```
$ faas-cli -action deploy -name faas-stamp -image alexellis2/faas-stamp:0.2 -fprocess "sh entry.sh"
```

Then invoke it:

```
$ curl -SL "https://avatars2.githubusercontent.com/u/8311848?v=4&s=460" > jock.jpg
$ curl localhost:8080/function/faas-stamp --data-binary @jock.jpg > john-new.jpg
```

Use custom message:

```
$ curl localhost:8080/function/faas-stamp  -H "X-Caption: FaaS is cool" --data-binary \
  @$HOME/Downloads/avatar.jpg > avatar_new.jpg 
```

