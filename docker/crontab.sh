# Every days at 10:00 PM
PATH=$PATH:/bin:/usr/bin:/usr/local/bin

#curl "http://admin:$CARTE_PASSWORD@localhost:8080/kettle/executeJob/?rep=ETL-Adempiere&user=admin&pass=$CARTE_PASSWORD&job=Replicator_JOB&level=INFO&SOURCE_DB_HOST=$SOURCE_DB_HOST&SOURCE_DB_NAME=$SOURCE_DB_NAME&SOURCE_DB_PORT=$SOURCE_DB_PORT&SOURCE_DB_USERNAME=$SOURCE_DB_USERNAME&SOURCE_DB_PASSWORD=$SOURCE_DB_PASSWORD&TARGET_DB_HOST=$TARGET_DB_HOST&TARGET_DB_NAME=$TARGET_DB_NAME&TARGET_DB_PASSWORD=$TARGET_DB_PASSWORD&TARGET_DB_PORT=$TARGET_DB_PORT&TARGET_DB_USERNAME=$TARGET_DB_USERNAME"