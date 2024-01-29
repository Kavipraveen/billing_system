FROM python:3.11.7-bookworm
 
WORKDIR /app  # Set working directory
 
COPY . /app  # Copy all project files
 
CMD ["python3", "app.py"]  # Default command to run
