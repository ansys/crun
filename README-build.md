# Dockerfile based build

Containerized build of `crun` for rocky8 based on the instructions in [README.md](/README.md).

The following will compile the `./crun` executable by mounting the current directory into the container and directly working within this source directory.  Design note: This source directory is mounted as `/workspaces/crun` within the container to be consistency with GitHub Codespaces.

```bash
podman build -f dockerfiles/Dockerfile-rocky8 -t crun-rocky8 dockerfiles    # Create the container for the Rocky8 build environment
podman run -ti --rm --userns keep-id -v `pwd`:/workspaces/crun crun-rocky8  # Compile the crun executable working directly within the current source directory.
```
