# Examples on how the containers can be build and started:

## Ghost-lang-client container

Make sure you have tun-plugs and ghost-node in the build directory.

docker build -t ghost-lang-client -f ghost-lang-client.docker .

docker run --rm --privileged --link=ghost-server -p 8080:80 --name ghost-client -v <HOST PATH>:/ghost --read-only ghost-lang-client

## Ghost-lang-server container

Make sure you have tun-plugs and ghost-server in the build directory.

docker build -t ghost-lang-server -f ghost-lang-server.docker .

docker run --rm --privileged --name ghost-server ghost-lang-server
