#!/bin/sh

# Start the ssh server
/etc/init.d/ssh restart

# ESTA AQUI PARA CONSEGUIR PEGAR A VARIAVEL ENV PASSADA PELO "docker run .."
echo "root:${ROOTPASS}" | chpasswd

# Execute the CMD
exec "$@"