# Webauthn for Keycloak

## To build docker image.
You must have the following tools installed to build this docker image:
* maven
* git
* docker engine

```bash 
./build.sh
```

## To start a docker container by the built image
```bash
docker run -p 8080:8080 zhiweiliu/keycloak-webauthn
```

## To login to Keycloak
* User name: keymaster
* Password: passw0rd
