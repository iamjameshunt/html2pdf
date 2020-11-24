FROM ubuntu:20.04

RUN apt-get update \
 && apt-get install -y curl ca-certificates fontconfig libfreetype6 libjpeg-turbo8 libpng16-16 libssl1.1 libx11-6 libxcb1 libxext6 libxrender1 xfonts-75dpi xfonts-base \
 && curl -sLO https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb \
 && dpkg -i wkhtmltox_0.12.6-1.focal_amd64.deb \
 && rm -f wkhtmltox_0.12.6-1.focal_amd64.deb \
 && apt-get clean

WORKDIR /out
ENTRYPOINT wkhtmltopdf
