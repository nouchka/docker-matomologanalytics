#!/bin/bash

python /var/www/html/misc/log-analytics/import_logs.py \
	--token-auth=$MATOMO_TOKEN \
	--url=$MATOMO_URL \
	--idsite=$MATOMO_SITE \
	--recorders=4 \
	--enable-http-errors \
	--enable-http-redirects \
	--enable-static \
	--enable-bots \
	--log-format-regex='.* ((?P<ip>\S+) \S+ \S+ \[(?P<date>.*?) (?P<timezone>.*?)\] "\S+ (?P<path>.*?) \S+" (?P<status>\S+) (?P<length>\S+) "(?P<referrer>.*?)" "(?P<user_agent>.*?)").*' \
	$MATOMO_FILE
