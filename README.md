# keycloak-build
Builds &amp; publishes to ghcr a pre-optimized keycloak image. 

Basically pre-select the db type, enable metrics & health endpoints and disable the kerberos feature as we don't need it.

Based on: https://www.keycloak.org/server/containers and 
https://docs.github.com/en/actions/publishing-packages/publishing-docker-images#publishing-images-to-github-packages

## Versioning schema:

Each tag is formatted `v<keycloak-version>-<repo-version>`.

Keycloak version should be the version of keycloak packaged in the container.
Repo version is bumped when the dockerfile is changed, except when this change is just to update keycloak itself.
