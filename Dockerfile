FROM alpine
RUN apk add curl jq
COPY kubernetes-scanner-test.sh /usr/bin/
ENTRYPOINT kubernetes-scanner-test.sh
