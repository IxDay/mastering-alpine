Simple demo of an alpine pipeline
=================================

Requirements
------------

- docker
- docker-compose
- openssl (for key generation)

Getting started
---------------

First of all run the [setup,sh script](./setup.sh) to provision some rsa keys
and setup a compatible UID inside your containers.

You can now build the first two containers:

```bash
# startup containers
docker-compose up -d mirror server
# wait for the mirror to be provisioned, you can check progress with the following command
docker logs -f mirror
```

Then, we will build our base container, which will serve as the underlying
containers for the following ones:

```bash
docker-compose build base
```

This container will use our local mirror as the main repository, and allow us
to build offline (yay \o/).

Once this is done, you can build and run the `package` container which provides
a full environment for building alpine packages.
You can check how this container is build [here](./dockerfiles/package) and
an example for an `hello` package in this [APKBUILD](./assets/APKBUILD).

The created package should have been pushed to your local mirror, you can check
its presence by running:

```bash
curl localhost:8080/x86_64/ | grep hello
```

You can now build the last container, which will use our custom package:

```bash
# build and bring up our hello world http container
docker-compose up hello
# check if everything works
curl localhost:8081
```

That's all folks!

Misc containers
---------------

The demo contains also two other containers: `full`, `binary`.

The first one compile and install our simple web app, it does not remove
dependencies and shows how a build chain can be important (*~200MB).

The second does the same, but take care of removing dev dependencies using
apk virtual package switch. This drastically reduce size of the resulting
container (*~10MB*).

