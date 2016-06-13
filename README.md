# Examples on how the containers can be build and started:

## Ghost-lang-client container

Make sure you have tun-plugs and ghost-node in the build directory.

docker build -t ghost-lang-client .

docker run --rm --privileged --link=ghost-server -p 8080:80 --name ghost-client -v [the host path]:/ghost --read-only ghost-lang-client

## Ghost-lang-server container

Make sure you have tun-plugs and ghost-server in the build directory.

docker build -t ghost-lang-server .

docker run --rm --privileged --name ghost-server ghost-lang-server

## Ghost-lang-client-wot (without tun)

Make sure that you have ghost-node in the build directory.

docker build -t ghost-lang-client-wot .

docker run --rm --link=ghost-server -p 8080:80 --name ghost-client -v [the host path]:/ghost --read-only ghost-lang-client-wot

## Ghost-lang-server-wot (without tun)

Make sure that you have ghost-server in the build directory.

docker build -t ghost-lang-server-wot .

docker run --rm --name ghost-server ghost-lang-server-wot
