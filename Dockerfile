# Build stage
FROM python:3.11-slim as build

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Production stage
FROM python:3.11-slim

WORKDIR /app

COPY --from=build /app /app

# Install Gunicorn
RUN pip install --no-cache-dir gunicorn

# Copy the entrypoint script
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

# Set the environment variable for Flask
ENV FLASK_APP=run.py
ENV FLASK_ENV=production

# Expose the port that Gunicorn will run on
EXPOSE 8000

# Run the entrypoint script
ENTRYPOINT ["./entrypoint.sh"]
