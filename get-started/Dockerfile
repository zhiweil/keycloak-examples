FROM jboss/base-jdk:8

ENV KEYCLOAK_VERSION 4.8.3.Final
ENV JBOSS_HOME /opt/jboss/keycloak

# Enables signals getting passed from startup script to JVM
# ensuring clean shutdown when container is stopped.
ENV LAUNCH_JBOSS_IN_BACKGROUND 1

USER jboss

RUN cd /opt/jboss && \
    curl -s http://downloads.jboss.org/keycloak/$KEYCLOAK_VERSION/keycloak-$KEYCLOAK_VERSION.zip -o tmp.zip && \
    unzip tmp.zip -d . && \
    mv /opt/jboss/keycloak-$KEYCLOAK_VERSION /opt/jboss/keycloak && \
    rm tmp.zip

ADD get-started-entrypoint.sh /opt/jboss/

EXPOSE 8080

ENTRYPOINT [ "/opt/jboss/get-started-entrypoint.sh" ]

CMD ["-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]