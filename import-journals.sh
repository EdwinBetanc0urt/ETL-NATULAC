#!/bin/bash

ETL_HOST="0.0.0.0:8080"
ETL_USER="ademin"
ETL_PASSWORD="password"

# importar SPI hacia ADempiere desde base de datos oracle
# ADempiere <- SPI DB Oracle
curl "http://$ETL_HOST/kettle/executeJob/?rep=ETL-Natulac&user=$ETL_USER&pass=$ETL_PASSWORD&job=Job/job_journal"

curl "http://$ETL_USER:$ETL_PASSWORD@$ETL_HOST/kettle/executeJob/?rep=ETL-Natulac&user=$ETL_USER&pass=$ETL_PASSWORD&job=Job/job_journal"
