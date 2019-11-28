## puppeteer docker

puppeteer as a service 


## Chromium

Chromium 持续更新地址

https://download-chromium.appspot.com/


每个构建版本信息

https://omahaproxy.appspot.com/

## 中文支持

默认安装的`Chromium` 不支持中文

https://www.google.com/get/noto/help/cjk/

https://github.com/googlei18n/noto-cjk


文件

```
https://github.com/CoffeeAndCode/puppeteer-heroku-buildpack/raw/master/fonts/wqy-zenhei.ttc
https://github.com/CoffeeAndCode/puppeteer-heroku-buildpack/raw/master/fonts/wqy-microhei.ttc
``
添加对 中文,日文,韩文的支持

https://github.com/puppeteer/puppeteer/blob/master/docs/troubleshooting.md#running-puppeteer-on-heroku


文件
`https://github.com/emojione/emojione-assets/releases/download/3.1.2/emojione-android.ttf`
添加对emjio的支持


```
RUN cd /usr/share/fonts && \
wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifSC.zip && unzip NotoSerifSC.zip && rm -rf NotoSerifSC.zip *.txt README && \
wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSC.zip && unzip NotoSansSC.zip && rm -rf NotoSansSC.zip *.txt README && \
wget https://github.com/emojione/emojione-assets/releases/download/3.1.2/emojione-android.ttf
```