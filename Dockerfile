FROM python:3.11.7-bookworm
 
WORKDIR /billing_system/app  # Set working directory
 
COPY . .  # Copy all project files
 
CMD ["python", "billing_system.py"]  # Default command to run
