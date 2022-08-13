FROM postgres:14.5-alpine

# Set timezone
RUN apk add -U --no-cache tzdata
ENV TZ Europe/Istanbul
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime

CMD [ "postgres" ]
