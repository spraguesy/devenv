CASSANDRA_VERSION=3.11.4
CASSANDRA_PORT=3688
KAFKA_VERSION=2.3.1
JAVA_VERSION=8
POSTGRES_VERSION=12.0
POSTGRES_PORT=9876
PYTHON_VERSION=3.8.0
SHELL=/bin/bash
TMUX_VERSION=2.9

#PostgreSQL
USERNAME=asprague



#Spark
SPARK_VERSION=2.4.3

generate-passwords:
	@echo Generating passwords...
	mkdir -p ./passwords
	PASS=$(shell date +%s | sha256sum | base64 | head -c 32)
	@echo $(PASS) > ./passwords/postgresql.txt
	echo pwd

install-tmux:
	@echo Installing tmux....
	@echo $(HOME)

install-env: 
