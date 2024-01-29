FROM ubuntu:22.04  # Base image with build tools
 
RUN apt-get update && apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
 
RUN wget https://www.python.org/ftp/python/3.11.7/Python-3.11.7.tgz
RUN tar -xf Python-3.11.7.tgz
RUN cd Python-3.11.7 && ./configure --enable-optimizations
RUN cd Python-3.11.7 && make -j 4
RUN cd Python-3.11.7 && make altinstall
 
WORKDIR /app  # Set working directory

COPY requirements.txt requirements.txt  # Copy requirements file (if any)
RUN pip install -r requirements.txt  # Install dependencies
 
COPY . .  # Copy all project files
 
CMD ["python", "billing_system.py"]  # Default command to run
