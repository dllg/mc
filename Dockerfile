FROM alpine:3.7
RUN apk add --no-cache bash mc vim

# Set current working directory
WORKDIR /home

# Run the start-script
ADD docker_entry.sh /usr/local/bin/docker_entry.sh
RUN chmod 755 /usr/local/bin/docker_entry.sh

ENTRYPOINT ["docker_entry.sh"]
