FROM golang:1.12-alpine as builder
RUN apk --no-cache add make git
WORKDIR /
COPY . /
RUN make build

FROM alpine:latest
RUN apk --no-cache add ca-certificates
COPY --from=builder /bin/kubeval .
RUN ln -s /kubeval /usr/local/bin/kubeval
#RUN apk update
#RUN apk upgrade
#RUN apk add bash
COPY run.sh /usr/local/bin/kubeval-run
COPY run-all.sh /usr/local/bin/kubeval-run-all
WORKDIR /fixtures
