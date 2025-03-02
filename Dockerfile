FROM hashicorp/consul:latest

USER consul

COPY --chown=consul:consul ./config/consul.hcl /consul/config/consul.hcl

WORKDIR /consul

EXPOSE 8500 8600 8600/udp

ENTRYPOINT ["consul"]
CMD ["agent", "-config-dir=/consul/config"]
