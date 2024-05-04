# keycloak-build
Builds &amp; publishes to ghcr a pre-optimized keycloak image. 

Basically pre-select the db type, enable metrics & health endpoints and disable the kerberos feature as we don't need it.

Based on: https://www.keycloak.org/server/containers and 
https://docs.github.com/en/actions/publishing-packages/publishing-docker-images#publishing-images-to-github-packages

