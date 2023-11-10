# Use the official Apache Airflow image as the base
FROM apache/airflow:2.7.3

# Copy the requirements file to the container
COPY requirements.txt /requirements.txt

# Upgrade pip and install dependencies
RUN pip install --user --upgrade pip \
    && pip install --no-cache-dir --user -r /requirements.txt
