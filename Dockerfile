FROM python:3.11.7-bookworm

# Set working directory to the intended location (code/ in your case)
WORKDIR /code

# Copy requirements file first for caching
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy all project files to the working directory
COPY . .

# Specify the correct command to run the app
CMD ["python", "app.py"]

