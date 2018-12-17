FROM matomo:apache as matomo
LABEL maintainer="Jean-Avit Promis docker@katagena.com"

FROM python:2.7-slim-jessie
COPY --from=matomo /usr/src/piwik/ /var/www/html/
COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
