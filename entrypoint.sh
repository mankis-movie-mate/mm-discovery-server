#!/bin/sh
set -e

# Substitute env vars into template
echo "🛠️ Rendering consul.hcl from template..."
envsubst < /config/consul.hcl.template.template > /config/consul.hcl.template

echo "🚀 Starting Consul agent..."
exec consul agent -config-file=/config/consul.hcl.template
