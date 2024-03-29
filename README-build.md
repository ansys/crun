# Dockerfile based build

Build for rocky8 using the instructions in [README.md](/README.md)

The mount point `/workspaces/crun` is for consistency with GitHub Codespaces.

```bash
podman build -f dockerfiles/Dockerfile-rocky8 -t crun-rocky8 dockerfiles
podman run -ti --rm --userns keep-id -v `pwd`:/workspaces/crun crun-rocky8
```
