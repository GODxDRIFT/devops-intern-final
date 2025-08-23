FROM python:3.11-alpine
WORKDIR /app
COPY hello.py /app/hello.py
CMD ["python", "hello.py"]
