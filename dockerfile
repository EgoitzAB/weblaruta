# Build stage
FROM python:3.11-slim as build

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt
COPY . .

# Production stage
FROM python:3.11-slim

WORKDIR /app

COPY --from=build /app /app

# Set environment variables
ENV FLASK_APP=run.py
ENV FLASK_ENV=production

# Install Gunicorn
RUN pip install --no-cache-dir gunicorn
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Copy the entrypoint script and give it execution permissions
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Expose the port that Gunicorn will run on
EXPOSE 8000

# Use the entrypoint script
ENTRYPOINT ["/app/entrypoint.sh"]

# Command to run the application
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "run:app"]
