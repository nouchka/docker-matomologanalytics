FROM matomo as matomo
FROM python:2.7-slim-jessie
COPY --from=matomo /usr/src/piwik/ /var/www/html/
ADD docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
