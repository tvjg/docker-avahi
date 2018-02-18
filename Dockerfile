FROM alpine:3.4

RUN apk add --no-cache avahi && \
    sed -i 's/#enable-dbus=yes/enable-dbus=no/g' /etc/avahi/avahi-daemon.conf

EXPOSE 5353/udp

ENTRYPOINT ["avahi-daemon"]
CMD ["--no-rlimits"]