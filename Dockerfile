FROM alpine:3.3

RUN apk --update add python py-pip && \
    pip install elasticsearch-curator==3.5.0 && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/curator"]

CMD ["--help"]
