FROM python:3.11.7-bookworm
 
WORKDIR /output  # Set working directory
 
COPY /app/. /output # Copy all project files
 
CMD ["python3", "app.py"]  # Default command to run
