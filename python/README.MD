


## pillow-simd

`make simd`


```
FROM python:alpine
RUN apk add --no-cache gcc g++ make zlib-dev libjpeg-turbo-dev libwebp-dev freetype-dev && \
    CC="cc -mavx2" pip3 install -U --force-reinstall pillow-simd && \
    pip3 install qrcode
```

python 3.8.5 with 

`pillow-simd-7.0.0.post3 qrcode-6.1 six-1.15.0`