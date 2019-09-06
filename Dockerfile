FROM alpine

MAINTAINER GSMLG <me@gsmlg.org>

RUN apk update \
    && apk add elixir \
    && apk add make \
    && apk add bash \
    && apk add nodejs \
    && apk add git \
    && mix local.rebar --force \
    && mix local.hex --force \
    && mix archive.install --force hex phoenix \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash"]

