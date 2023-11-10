# Podcast Summary ETL with Airflow

![Airflow Logo](https://media.licdn.com/dms/image/C4E12AQHoVeqrxqV_sQ/article-cover_image-shrink_720_1280/0/1633047057377?e=2147483647&v=beta&t=oH7tD4CMViAeZ6srUHV8xVcAamoh1_Kx7AQRS4Dl01M)

## Overview

This project implements an ETL pipeline for summarizing podcast episodes using Apache Airflow and SQLite3. The workflow includes tasks for SQLite database creation, podcast data extraction, transformation, and loading. Customize the DAG to fit your podcast feed and SQLite database setup.

## Features

- **Dynamic DAG:** Orchestrates tasks for SQLite database setup, podcast data extraction, and storage.
- **SQLite Database Schema:** Defines a table to capture podcast episode details.
- **Podcast Data Extraction:** Retrieves podcast data from an RSS feed.
- **SQLite Data Manipulation:** Transforms and loads podcast episode data into SQLite.
- **Episode Downloading :** Downloads podcast episodes locally.
- **Dynamic Workflow:** Adapts dynamically to available data, ensuring efficient processing.
- **Logging and Monitoring:** Leverages Airflow's logging features for task monitoring.

## Usage

1. **Create a virtual environment:**
    ```bash
    python -m venv venv
    ```

2. **Copy the `docker-compose.yaml` file into your directory.**

3. **Create directories:**
    ```bash
    mkdir dags logs plugins
    ```

4. **Paste the `Dockerfile` and `requirements.txt` in the same directory.**

5. **Paste the `podcast-summary.py` into the `dags` folder.**

6. **Build and use Docker Compose:**
    ```bash
    docker-compose up --build
    ```

7. Access the Airflow UI at `http://localhost:8080` and trigger the DAG.

# Setting up Airflow

## Install Apache Airflow:

1. Install Apache Airflow following the [official documentation](https://airflow.apache.org/docs/apache-airflow/stable/installation.html).

2. Initialize the Airflow database and start the web server and scheduler.

## Define SQLite Connection in Airflow UI:

1. Open the Airflow UI and navigate to the "Admin" tab.

2. Click on "Connections" and add a new connection named "podcasts" with the SQLite connection details.

## Configure the DAG:

1. Open the `podcast_summary.py` file and configure the following parameters:
   - `PODCAST_URL`: Set the URL of the podcast RSS feed.
   - SQLite Connection Details: Ensure the SQLite connection details are correctly configured.

2. Customize other settings in the DAG file as needed.

## Run the DAG:

Trigger the DAG in the Airflow UI to initiate the ETL pipeline.

# Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please:

1. Open an issue to discuss the changes you'd like to make.
2. Fork the repository and create a new branch for your feature/bug fix.
3. Make your changes and submit a pull request.

Thank you for contributing!

