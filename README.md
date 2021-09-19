# CyberChef-docker
Just a CyberChef docker version, its based in the latest build of Cyberchef and it has multiarch containers if you want to simply host a version of cyberchef yourself.
the image is based in nginx alpine for hosting the static files 

Docker image can be pulled from [dockerhub](https://hub.docker.com/r/n4v41/cyberchef)
```bash
docker pull n4v41/cyberchef
```

just run like:
```bash
docker run -p 8080:80 n4v41/cyberchef
```
