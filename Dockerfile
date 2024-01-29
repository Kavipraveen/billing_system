FROM python:3.9  # Base image
 
WORKDIR /app  # Set working directory
 
COPY . .  # Copy all project files
 
CMD ["python", "billing_system.py"]  # Default command to run
