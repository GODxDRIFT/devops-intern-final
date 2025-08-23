# DevOps Intern Final – Reference Repo

This repository contains a minimal, end-to-end setup demonstrating:
- Linux scripting
- Docker containerization
- CI with GitHub Actions
- Nomad job spec (service)
- Basic logging/monitoring notes (Grafana Loki)

> Replace all occurrences of `YOUR_GITHUB_USERNAME` and `YOUR_REPO_NAME` below after you push to GitHub.

## Quick Start

```bash
# clone
git clone https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME.git
cd YOUR_REPO_NAME

# run the Python app
python hello.py

# run the system info script
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
```

## Docker

```bash
# build image
docker build -t hello-devops:latest .

# run container
docker run --rm hello-devops:latest
```

## GitHub Actions CI

A simple workflow runs on every push and PR:
- Lints Python (basic)
- Runs the script
- Builds the Docker image

**Badge (update OWNER/REPO after pushing):**
```
![CI](https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME/actions/workflows/ci.yml/badge.svg)
```

## Nomad Job

Sample Nomad job file in `nomad/hello.nomad` uses Docker driver to run this app.
Update the image reference to your container registry (e.g., GHCR or ACR) if you push images there.

```bash
nomad job run nomad/hello.nomad
```

## Monitoring (Grafana Loki)

Steps and commands in `monitoring/loki_setup.txt` show how to run Loki and view logs locally with Docker.

## Screenshots to capture
- Repo home with files
- Actions tab showing successful run
- `docker build` and `docker run` output
- `nomad job run` plan/alloc output (if you have Nomad locally)
- Loki `/ready` response and Grafana datasource config (optional)

---

Generated on: 2025-08-23
