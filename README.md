# slcli_docker
Container to run slcli command

USAGE:
```
docker run -v <local_path_to_softlayer_config>:/home/cli/.softlayer wanderadock/slcli:latest <command> [OPTIONS]
```
Commands and options available as per https://softlayer-api-python-client.readthedocs.io/en/latest/cli/

Sample softlayer config
```
[softlayer]
username = <sl_username>
api_key = <sl_api_key>
endpoint_url = https://api.softlayer.com/xmlrpc/v3/
timeout = 40
```
