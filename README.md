# 🇳🇵 Nepali Date API (Dockerized)

A minimal Flask API that returns today's Nepali date (`बिक्रम संवत`) using the [py-nepali](https://github.com/opensource-nepal/py-nepali) library.

The API is containerized using Docker and served via Gunicorn for production readiness.

---

## Features

- Get today’s Nepali date via `/date` endpoint
- Lightweight Alpine-based Docker image
- Production-ready with Gunicorn WSGI server
- Healthcheck endpoint for container monitoring

