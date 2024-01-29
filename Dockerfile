FROM python:3.11.7-bookworm
 
WORKDIR /output  # Set working directory
 
COPY /billing_system/app/. /output  # Copy all project files
 
CMD ["python", "app.py"]  # Default command to run
