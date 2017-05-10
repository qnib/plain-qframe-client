FROM qnib/alplain-init

ENV SKIP_ENTRYPOINTS=1 \
    HOST=172.17.0.2 \
    PORT=11001
RUN apk --no-cache add netcat-openbsd
COPY bin/*.sh /usr/local/bin/
