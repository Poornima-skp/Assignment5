FROM alpine:latest as builder 
WORKDIR /workspace
COPY data.txt /workspace
FROM fedora:latest as final
WORKDIR /workspace
COPY --from=builder /workspace/data.txt /workspace