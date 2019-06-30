ARG ELK_VERSION

FROM docker.elastic.co/beats/filebeat:${ELK_VERSION}

USER root
# Create a directory to map volume with all docker log files
RUN mkdir /usr/share/filebeat/dockerlogs && \
   chown -R root /usr/share/filebeat/ && \
   chmod -R go-w /usr/share/filebeat/
