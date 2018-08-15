FROM elixir:alpine

MAINTAINER GSMLG <me@gsmlg.org>

RUN apk update \
    && apk add make \
    && apk add bash \
    && mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez \
    && mix local.rebar --force \
    && mix local.hex --force \
    && apk add nodejs \
    && apk add git \
    && rm -rf /var/cache/apk/*


ENTRYPOINT ["/bin/sh"]
