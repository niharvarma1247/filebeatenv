FROM ubuntu:latest

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY binary/filebeat /filebeat
COPY filebeat.yml /filebeat.yml

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/filebeat", "-c", "/filebeat.yml"]
