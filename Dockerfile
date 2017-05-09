FROM qnib/alplain-init

ENV SKIP_ENTRYPOINTS=1
RUN apk --no-cache add netcat-openbsd
COPY bin/send-tcp-event.sh /usr/local/bin/
