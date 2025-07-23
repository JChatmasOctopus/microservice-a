FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Tell Docker (and Cloud Run) that we listen on 8080
ENV PORT 8080
EXPOSE 8080

CMD ["python", "app.py"]
