# Docker > Debian + Nginx + SSH

## Comando para buildar a imagem pelo Dockerfile
`docker build -t rafael --build-arg DEFAULT_ROOTPASS=docker@123`

## Comando para subir a imagem
DOCKER RUN NAS PORTAS PARA ACESSO VIA LOCALHOST E SSH
`docker run -d -p 3000:80 -p 3022:22 --env ROOTPASS=dev@123 rafael`

## VARIAVEIS DE AMBIENTE PADRÃO
- DEFAULT_ROOTPASS
- ROOTPASS

`Setar as variaveis padrões para alterar a senha do servidor debian que sera levantado.`