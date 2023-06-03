FROM debian:latest
LABEL version="1.0.1" arch="x86-64"
RUN apt-get update && apt-get install -y htop
# Copy file entrypoint.sh to "/" (image racine)
COPY entrypoint.sh /
# set execution permissio to file entrypoint.sh
RUN chmod +x /entrypoint.sh
# Set CMD (if exist entrypoint.sh, CMD will be use as entrypoint.sh's parameters)
CMD ["User-name"]
# Set entrypoint path
ENTRYPOINT ["/entrypoint.sh"]
