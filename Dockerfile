ARG BASE_KC_VERSION="26.0.8"
FROM quay.io/keycloak/keycloak:${BASE_KC_VERSION} AS builder

ENV KC_DB=postgres
ENV KC_FEATURES=passkeys
ENV KC_FEATURES_DISABLED=kerberos 
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

WORKDIR /opt/keycloak
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:${BASE_KC_VERSION}
COPY --from=builder /opt/keycloak /opt/keycloak
ENTRYPOINT [ "/opt/keycloak/bin/kc.sh" ]
