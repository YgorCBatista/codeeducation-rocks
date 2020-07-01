FROM golang AS builder

COPY . src/app/

RUN go build src/app/main.go

FROM scratch

COPY --from=builder /go/main /

CMD ["/main"]