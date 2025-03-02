FROM hashicorp/consul:latest

COPY config/consul.hcl /consul/config/consul.hcl

# Expose necessary ports in inside network
EXPOSE 8500 8600 8600/udp

CMD ["agent", "-config-dir=/consul/config"]