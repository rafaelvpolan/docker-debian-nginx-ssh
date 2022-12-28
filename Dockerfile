FROM debian:11.6-slim 
ARG DEFAULT_ROOTPASS=2
ENV ROOTPASS=$DEFAULT_ROOTPASS

RUN apt-get -y update \
    && apt-get install -y nano openssh-server nginx \
    && apt-get -y update \
    # && echo "root:${ROOTPASS}" | chpasswd \
    && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config 

COPY nginx.config /etc/nginx/sites-available/default

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 80/tcp 22/tcp

CMD ["nginx", "-g", "daemon off;"]

# ===================
# COMANDOS DOCKER PARA CRIAR IMAGEM
# docker build -t rafael --build-arg DEFAULT_ROOTPASS=docker@123 .
# DOCKER RUN NAS PORTAS PARA ACESSO VIA LOCALHOST E SSH
# docker run -d -p 3000:80 -p 3022:22 --env ROOTPASS=dev@123 rafael


