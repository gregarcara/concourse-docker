# Concourse Docker

# *Deprecated*
See [the new official image](https://github.com/concourse/concourse-docker) for the latest.

**Running 1.4.1**

Create [Docker](https://www.docker.com/) images to run [Concourse](http://concourse.ci) in.

See [here](https://github.com/concourse/bin) for more details.

See [Standalone Binaries](http://concourse.ci/binaries.html) for binary details.

## Usage

### Quick-start

See the Quick-start folder.

### Generate private keys

Run generate-keys.sh to create keys to be used by the web host and workers.

### Environment variables

* `CONCOURSE_EXTERNAL_URL` - The URL to access concourse web at. Usually [http://192.168.99.100:8080](http://192.168.99.100:8080) or [http://localhost:8080](http://localhost:8080)
* `CONCOURSE_LOGIN` - Username to use for concourse basic auth.
* `CONCOURSE_PASSWORD` = Password to use for concourse basic auth.

### Start Concourse

Run:
```
docker-compose up
```

Open the CONCOURSE_EXTERNAL_URL specified above ([http://192.168.99.100:8080](http://192.168.99.100:8080)) and start using concourse.

See [Using Concourse](https://concourse.ci/using-concourse.html) to get started.
