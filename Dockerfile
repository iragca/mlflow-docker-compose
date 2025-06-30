FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    gcc \
    git && \
    rm -rf /var/lib/apt/lists/*

# Set workdir
WORKDIR /app

# Install MLflow and optionally extras like sklearn, torch, etc.
RUN pip install --no-cache-dir mlflow[extras] psycopg2

# Set default command (overridden by docker-compose)
CMD ["mlflow", "--help"]
