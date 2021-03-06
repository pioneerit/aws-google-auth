FROM alpine:3.5

RUN apk add --update-cache py3-pip ca-certificates py3-certifi py3-lxml

ADD . /build/
RUN pip3 install /build/

ENV REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
ENTRYPOINT ["aws-google-auth"]

