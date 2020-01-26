# Unreal Gold Dedicated Server Docker Image

First crack at a Docker image for an Unreal Gold Co-Op server.

Slap your game directory in `Game/` and build the image with

```cmd
docker build -t unreal-gold-coop .
```

When you run the image, it will automatically place server config files (`Unreal.ini`, etc.) in a volume called `_data`. On Windows, you can usually find this in `%ProgramData%\docker\volumes`.

Recommend running on a transparent network interface and setting a static IP to port forward to. Limiting CPU and memory is also a decent idea just in case something goes haywire.

Example run:

```cmd
docker run --name unreal --detach --restart always --cpus 1 --memory 1GB --network=tlan --hostname unreal --ip 192.168.1.3 unreal-gold-coop
```