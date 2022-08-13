FROM postgres:14.5-alpine

# Set timezone
RUN apk add -U --no-cache tzdata
ENV TZ Europe/Istanbul
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime

COPY create-database.sh /docker-entrypoint-initdb.d/
COPY ha-entrypoint.sh /usr/local/bin

ENTRYPOINT ["ha-entrypoint.sh"]
CMD [ "postgres" ]
