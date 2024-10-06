#!/bin/bash

ETL_HOST="0.0.0.0:8080"
ETL_USER="ademin"
ETL_PASSWORD="password"

# importar Ordenes generadas del play en txt hacia ADempiere
# ADempiere <- *.txt Play
curl "http://$ETL_HOST/kettle/executeJob/?rep=ETL-Natulac&user=$ETL_USER&pass=$ETL_PASSWORD&job=Job/job_import"

curl "http://$ETL_USER:$ETL_PASSWORD@$ETL_HOST/kettle/executeJob/?rep=ETL-Natulac&user=$ETL_USER&pass=$ETL_PASSWORD&job=Job/job_import"
