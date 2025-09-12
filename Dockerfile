FROM hashicorp/consul:1.18

# Switch to root to install packages
USER root

# Install envsubst (from gettext)
RUN apk add --no-cache gettext

# Create config directory with right permissions
RUN mkdir -p /config && chown -R consul:consul /config

# Copy files
COPY config/consul.hcl.template /config/consul.hcl.template
COPY entrypoint.sh /entrypoint.sh

# Set permissions
RUN chmod +x /entrypoint.sh \
 && chown -R consul:consul /config

# Expose ports
EXPOSE 8500 8600 8600/udp

# Drop back to non-root user
USER consul

# Run entrypoint
ENTRYPOINT ["/entrypoint.sh"]
