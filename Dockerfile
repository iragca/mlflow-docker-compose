FROM python:3.13-slim

# Install MLflow
RUN pip install --no-cache-dir mlflow

# Create a working directory
WORKDIR /app

# Expose MLflow port
EXPOSE 8080

# Default command to run MLflow
CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "8080"]
