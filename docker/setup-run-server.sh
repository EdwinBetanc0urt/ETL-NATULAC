#!/bin/bash

# Pentaho credentials
sed -i "s|@CARTE_PASSWORD@|$CARTE_PASSWORD|g" /opt/pentaho/server.xml
sed -i "s|@CRON_SETUP@|$CRON_SETUP|g" /opt/pentaho/setup_crontab.sh


# Email config
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@EMAIL_SMTP_SERVER@|$EMAIL_SMTP_SERVER|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@EMAIL_SMTP_PORT@|$EMAIL_SMTP_PORT|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@EMAIL_SENDER_ADDRESS@|$EMAIL_SENDER_ADDRESS|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@EMAIL_PASSWORD@|$EMAIL_PASSWORD|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@EMAIL_SENDER_NAME@|$EMAIL_SENDER_NAME|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@EMAIL_DESTINATION_ADDRESS@|$EMAIL_DESTINATION_ADDRESS|g" {} \;

# sed -i "s|@EMAIL_SMTP_SERVER@|$EMAIL_SMTP_SERVER|g" /opt/pentaho/repo/Job/*.kjb
# sed -i "s|@EMAIL_SMTP_PORT@|$EMAIL_SMTP_PORT|g" /opt/pentaho/repo/Job/*.kjb
# sed -i "s|@EMAIL_SENDER_ADDRESS@|$EMAIL_SENDER_ADDRESS|g" /opt/pentaho/repo/Job/*.kjb
# sed -i "s|@EMAIL_PASSWORD@|$EMAIL_PASSWORD|g" /opt/pentaho/repo/Job/*.kjb
# sed -i "s|@EMAIL_SENDER_NAME@|$EMAIL_SENDER_NAME|g" /opt/pentaho/repo/Job/*.kjb
# sed -i "s|@EMAIL_DESTINATION_ADDRESS@|$EMAIL_DESTINATION_ADDRESS|g" /opt/pentaho/repo/Job/*.kjb


# ADempiere Backend connection
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@TOKEN@|$TOKEN|g" {} \;

# sed -i "s|@TOKEN@|$TOKEN|g" /opt/pentaho/repo/Job/*.kjb


# Play Backend
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@PLAY_HOST_URL@|$PLAY_HOST_URL|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@PLAY_OUTPUT_PATH@|$PLAY_OUTPUT_PATH|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@PLAY_INPUT_PATH@|$PLAY_INPUT_PATH|g" {} \;

# sed -i "s|@PLAY_HOST_URL@|$PLAY_HOST_URL|g" /opt/pentaho/repo/Job/*.kjb
# sed -i "s|@PLAY_OUTPUT_PATH@|$PLAY_OUTPUT_PATH|g" /opt/pentaho/repo/Job/*.kjb
# sed -i "s|@PLAY_INPUT_PATH@|$PLAY_INPUT_PATH|g" /opt/pentaho/repo/Job/*.kjb


# Journal Backend
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@JOURNAL_SOURCE_DB_HOST@|$JOURNAL_SOURCE_DB_HOST|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@JOURNAL_SOURCE_DB_PORT@|$JOURNAL_SOURCE_DB_PORT|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@JOURNAL_SOURCE_DB_NAME@|$JOURNAL_SOURCE_DB_NAME|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@JOURNAL_SOURCE_DB_USERNAME@|$JOURNAL_SOURCE_DB_USERNAME|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@JOURNAL_SOURCE_DB_PASSWORD@|$JOURNAL_SOURCE_DB_PASSWORD|g" {} \;
find /opt/pentaho/repo -type f -name "*.kjb" -exec sed -i "s|@JOURNAL_HOST_URL@|$JOURNAL_HOST_URL|g" {} \;

# sed -i "s|@JOURNAL_SOURCE_DB_HOST@|$JOURNAL_SOURCE_DB_HOST|g" /opt/pentaho/repo/**.kjb
# sed -i "s|@JOURNAL_SOURCE_DB_PORT@|$JOURNAL_SOURCE_DB_PORT|g" /opt/pentaho/repo/**.kjb
# sed -i "s|@JOURNAL_SOURCE_DB_NAME@|$JOURNAL_SOURCE_DB_NAME|g" /opt/pentaho/repo/*.kjb
# sed -i "s|@JOURNAL_SOURCE_DB_USERNAME@|$JOURNAL_SOURCE_DB_USERNAME|g" /opt/pentaho/repo/*.kjb
# sed -i "s|@JOURNAL_SOURCE_DB_PASSWORD@|$JOURNAL_SOURCE_DB_PASSWORD|g" /opt/pentaho/repo/*.kjb
# sed -i "s|@JOURNAL_HOST_URL@|$JOURNAL_HOST_URL|g" /opt/pentaho/repo/Job/*.kjb


# sh /opt/pentaho/setup_crontab.sh
sh /opt/pentaho/run-server.sh
