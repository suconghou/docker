FROM alpine
COPY --from=mwader/static-ffmpeg:8.0.1 /ffmpeg /usr/local/bin/
ADD MediaServer /home/live
ADD config.ini /home/
ADD default.pem /home/
ADD index.html /home/www/
EXPOSE 1935
CMD ["/home/live","-l","2"]