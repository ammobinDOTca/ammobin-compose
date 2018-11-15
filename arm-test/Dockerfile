FROM armhf/alpine:3.5
MAINTAINER contact@ammobin.ca

LABEL caddy_version="0.11.1" architecture="armhf"

ARG plugins=git

RUN apk add --no-cache tar curl git

RUN curl --silent --show-error --fail --location \
      --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - \
      "https://caddyserver.com/download/linux/arm7?license=personal" \
    | tar --no-same-owner -C /usr/bin/ -xz caddy 

RUN chmod 0755 /usr/bin/caddy  
RUN /usr/bin/caddy -version

EXPOSE 80
VOLUME /root/.caddy
WORKDIR /srv

COPY Caddyfile-hidden /etc/Caddyfile

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile", "--log", "stdout"]
