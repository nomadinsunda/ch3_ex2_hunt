FROM busybox:1.36

RUN adduser -D -H -s /bin/sh example

WORKDIR /example

COPY --chown=example:example --chmod=755 hunt.sh /example/hunt.sh

RUN sed -i 's/\r$//' /example/hunt.sh

USER example
CMD ["/example/hunt.sh"]
