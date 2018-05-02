FROM haproxy:1.8.8-alpine
ADD git-clone-config.sh /
ADD docker-entrypoint-gitconfig.sh /
RUN apk update && apk add git
ENTRYPOINT ["/docker-entrypoint-gitconfig.sh"]
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
