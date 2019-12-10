# Cloud Platform Docker Registry Cache

We use a lot of docker images from [docker hub].

Pulling these images can be quite slow, especially if docker hub are having performance problems.

This repository enables us to run an instance of [docker registry] as a 'pull-through' cache, in the cloud platform.

Docker images can be pulled from the cache, which is much faster.

[docker hub]: https://hub.docker.com/
[docker registry]: https://docs.docker.com/registry/recipes/mirror/
