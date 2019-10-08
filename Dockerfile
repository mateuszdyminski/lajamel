# Arguments
ARG CADDY_VERSION

FROM abiosoft/caddy:${CADDY_VERSION}

RUN mkdir -p /web

# Copy from repo
RUN mkdir -p /web/statics
COPY index.html /web/statics/
COPY Caddyfile /etc/Caddyfile

EXPOSE 2015

ENTRYPOINT [ "/bin/parent", "caddy", "--conf=/etc/Caddyfile", "--log=stdout", "--agree=false" ]

