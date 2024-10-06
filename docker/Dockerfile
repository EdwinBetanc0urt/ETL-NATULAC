FROM openjdk:8-jdk-alpine

LABEL maintainer="EdwinBetanc0urt@outlook.com; ElsioSanches@gmail.com;" \
	description="ETL Transformation NATULAC"

# Add operative system dependencies
RUN apk --no-cache add \
		zip \
		curl

WORKDIR /opt/pentaho

ENV \
	CARTE_PASSWORD=password \
	# EMail notification setup
	EMAIL_SMTP_SERVER=smtp.hostname \
	EMAIL_SMTP_PORT=587 \
	EMAIL_SENDER_ADDRESS=sender@e-mail.com \
	EMAIL_PASSWORD=smtp_password \
	EMAIL_SENDER_NAME=ETL \
	EMAIL_DESTINATION_ADDRESS=destination@e-mail.com \
	# ADempiere Backend connection
	TOKEN="token-fill" \
	# ADempiere Play Backend
	PLAY_HOST_URL="http://localhost:5561" \
	PLAY_OUTPUT_PATH="/tmp/play/masters/" \
	PLAY_INPUT_PATH="/tmp/play/orders/" \
	# ADempiere Journal Backend
	JOURNAL_SOURCE_DB_HOST=localhost \
	JOURNAL_SOURCE_DB_PORT=5432 \
	JOURNAL_SOURCE_DB_NAME=ETL \
	JOURNAL_SOURCE_DB_USERNAME=adempiere \
	JOURNAL_SOURCE_DB_PASSWORD=adempiere \
	JOURNAL_HOST_URL="http://localhost:5562" \
	JOURNAL_CURRENCY_ISO_CODE="VES" \
	JOURNAL_ORGANIZATION_CODE="0"

# add config files
COPY repo /opt/pentaho/repo/
COPY docker/repositories.xml /opt/pentaho/
COPY docker/setup_crontab.sh /opt/pentaho/
COPY docker/crontab.sh /opt/pentaho/
COPY docker/run.sh /opt/pentaho/
COPY docker/run-server.sh /opt/pentaho/
COPY docker/setup-run-server.sh /opt/pentaho/
COPY docker/server.xml /opt/pentaho/

# add large file in the background
ADD pdi-ce-9.3.0.0-428.zip /opt/pentaho/

# unzip and setup
RUN unzip /opt/pentaho/pdi-ce-9.3.0.0-428.zip && \
	rm /opt/pentaho/pdi-ce-9.3.0.0-428.zip && \
	mkdir -p ~/.kettle && \
	mkdir -p /tmp/process/ && \
	cp /opt/pentaho/repositories.xml ~/.kettle && \
	# chown -R adempiere /opt/pentaho/ && \
	chmod 777 /opt/pentaho/*.sh


ENTRYPOINT [ "/bin/sh", "/opt/pentaho/setup-run-server.sh" ]
