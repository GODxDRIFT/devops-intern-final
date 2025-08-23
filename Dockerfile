# Minimal Python image
FROM python:3.11-alpine

WORKDIR /app
COPY hello.py /app/hello.py

# Run the script by default
CMD ["python", "hello.py"]
