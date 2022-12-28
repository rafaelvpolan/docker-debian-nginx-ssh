# COMANDOS DOCKER PARA CRIAR IMAGEM
docker build -t rafael --build-arg DEFAULT_ROOTPASS=docker@123 .

# DOCKER RUN NAS PORTAS PARA ACESSO VIA LOCALHOST E SSH
docker run -d -p 3000:80 -p 3022:22 --env ROOTPASS=dev@123 rafael

# VARIAVEIS DE AMBIENTE PADRAO
DEFAULT_ROOTPASS
ROOTPASS

`Setar as variaveis padrões para alterar a senha do servidor debian que sera levantado.`