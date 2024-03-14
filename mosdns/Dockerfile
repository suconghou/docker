FROM alpine AS build
RUN wget https://github.com/IrineSistiana/mosdns/releases/download/v5.3.1/mosdns-linux-amd64.zip && \
    unzip mosdns-linux-amd64.zip
FROM alpine
COPY --from=build /mosdns /usr/local/bin/mosdns
WORKDIR /usr/local/bin/
ADD accelerated-domains.china.txt /usr/local/bin/
ADD CN-ip-cidr.txt /usr/local/bin/
ADD config.yaml /usr/local/bin/
ADD gfw.txt /usr/local/bin/
ADD hosts.txt /usr/local/bin/
ADD proxy-list.txt /usr/local/bin/
CMD [ "mosdns","start" ]