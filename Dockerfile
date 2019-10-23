############################################################################################################
# Container to run slcli command
# Usage: docker run -v <path_to_softlayer_config>:/home/cli/.softlayer slcli_docker <command> [OPTIONS]
# command and OPTIONS as per https://softlayer-api-python-client.readthedocs.io/en/latest/cli/
############################################################################################################

FROM alpine:latest

RUN apk --no-cache add python py-pip py-setuptools bash && \
      pip --no-cache-dir install -Iv softlayer

RUN adduser -D -u 5000 cli

USER cli
WORKDIR /home/cli
ENTRYPOINT ["slcli"]
CMD []
