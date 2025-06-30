# How to use:

1. Clone this repo
2. Write `docker compose up -d --build` to the CLI on the repo root directory.

## OR

1. Replace the build tag with `image:` in the `docker-compose.yml` file.

```yaml
  mlflow:
    build: .
    container_name: mlflow_server
```
to

```yaml
  mlflow:
    image: iragca/mlflow:latest
    container_name: mlflow_server
```