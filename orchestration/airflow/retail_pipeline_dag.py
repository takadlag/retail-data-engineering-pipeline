"""
DAG: retail_data_pipeline
Purpose: Orchestrates the end-to-end retail data engineering pipeline
Author: Your Name
"""

from datetime import datetime

from airflow import DAG
from airflow.operators.empty import EmptyOperator

# -----------------------------------------------------
# Default DAG arguments
# -----------------------------------------------------
default_args = {
    "owner": "data-engineering",
    "start_date": datetime(2024, 1, 1),
    "retries": 1,
}

# -----------------------------------------------------
# DAG definition
# -----------------------------------------------------
with DAG(
    dag_id="retail_data_pipeline",
    default_args=default_args,
    schedule_interval="@daily",
    catchup=False,
    description="End-to-end retail data engineering pipeline",
) as dag:

    # -------------------------------------------------
    # Task placeholders
    # -------------------------------------------------
    start = EmptyOperator(task_id="start")

    ingest_raw_data = EmptyOperator(task_id="ingest_raw_data")

    store_raw_data = EmptyOperator(task_id="store_raw_data")

    transform_sales_data = EmptyOperator(task_id="transform_sales_data")

    end = EmptyOperator(task_id="end")

    # -------------------------------------------------
    # Task dependencies
    # -------------------------------------------------
    start >> ingest_raw_data >> store_raw_data >> transform_sales_data >> end
