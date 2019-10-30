FROM jboss/keycloak:7.0.1
LABEL Author="Zhiwei Liu" Email=zhiwei.liu19@gmail.com

ENV KEYCLOAK_USER keymaster
ENV KEYCLOAK_PASSWORD passw0rd

COPY ./keycloak-webauthn-authenticator/webauthn4j-ear/target/keycloak-webauthn4j-ear-0.3.RELEASE.ear /opt/jboss/keycloak/standalone/deployments