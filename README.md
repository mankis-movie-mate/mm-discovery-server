# mm-discovery-server

Responsible for **dynamically registering and discovering services** within the MovieMate microservices ecosystem.

---

## 🗺️ Consul Environment Variables

This service uses [Consul](https://www.consul.io/) for service discovery and configuration.

- All key environment variables for Consul setup are defined and explained in `.env.example`.
- Copy `.env.example` to `.env` and adjust as needed for your environment.

---

## 🐳 Build locally from Dockerfile

To build a local Docker image for the Discovery Server:

```bash
docker build -t mm-discovery-server .
docker run --env-file .env -p 8500:8500 mm-discovery-server
