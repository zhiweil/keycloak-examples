#!/usr/bin/bash
# cloning and building the keycloak webauthn authenticator
git clone https://github.com/webauthn4j/keycloak-webauthn-authenticator.git
mvn clean install -f ./keycloak-webauthn-authenticator/pom.xml

# building docker images
docker build . -t zhiweiliu/keycloak-webauthn:7.0.1
docker tag zhiweiliu/keycloak-webauthn:7.0.1 zhiweiliu/keycloak-webauthn:latest

# pushing images to docker hub
# docker login --username=zhiweiliu
# docker push zhiweiliu/keycloak-webauthn:7.0.1
# docker push zhiweiliu/keycloak-webauthn:latest

rm -rf keycloak-webauthn-authenticator

