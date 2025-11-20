FROM alpine
RUN wget -O /usr/local/bin/frankenphp https://github.com/php/frankenphp/releases/download/v1.9.1/frankenphp-linux-x86_64
RUN chmod +x /usr/local/bin/frankenphp
RUN mkdir -p /app/www
WORKDIR /app
ADD Caddyfile /app/Caddyfile
EXPOSE 8080
CMD ["/usr/local/bin/frankenphp","run","-c","Caddyfile"]