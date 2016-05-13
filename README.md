# Docker-Xvfb

A simple dockerized Xvfb server to launch graphical interfaces.

- latest, 0.0.1


# Usage

Xvfb container will open X server ":99"  port.

```bash
# start a Xvfb container
docker run --name xvfb metal3d/xvfb

# launch "app" from "other/image", display is now in "xvfb" container
docker run -e DISPLAY=xvfb:99 --link xvfb other/image app
```

# X port

By default, DISPLAY port is "99", the ":" is appended by entrypoint. To override the value, you may override DISPLAY environment variable:

```bash
# start a Xvfb container listening on 55
docker run -e DISPLAY=55 --name xvfb metal3d/xvfb
```
