FROM python:3.12.0  # Base image
 
WORKDIR /app  # Set working directory

COPY requirements.txt requirements.txt  # Copy requirements file (if any)
RUN pip install -r requirements.txt  # Install dependencies
 
COPY . .  # Copy all project files
 
CMD ["python", "billing_system.py"]  # Default command to run
