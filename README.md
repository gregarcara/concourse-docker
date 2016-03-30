# Concourse Docker

Create [Docker](https://www.docker.com/) images to run [Concourse](http://concourse.ci) in.
See [here](https://github.com/concourse/bin) for more details.

## Usage

### Quick-start

From the quick-start folder run docker-compose up then go to [http://192.168.99.100:8080](http://192.168.99.100:8080)

You can edit the compose file to change the URL and login/password as needed. Defaults are the following:

* `URL` [http://192.168.99.100:8080](http://192.168.99.100:8080)
* `login` concourse
* `password` password

### Generate private keys

Run generate-keys.sh to create keys to be used by the web host and workers.

### Environment variables

* `CONCOURSE_EXTERNAL_URL` - The URL to access concourse web at. Usually [http://192.168.99.100:8080](http://192.168.99.100:8080)
* `CONCOURSE_LOGIN` - Username to use for concourse basic auth.
* `CONCOURSE_PASSWORD` = Password to use for concourse basic auth.

### Build docker images and run

Run:
```
docker-compose build
docker-compose up
```

Open the CONCOURSE_EXTERNAL_URL specified above ([http://192.168.99.100:8080](http://192.168.99.100:8080)) and start using concourse.

See [Using Concourse](https://concourse.ci/using-concourse.html) to get started.
