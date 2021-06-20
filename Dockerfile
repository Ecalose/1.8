FROM baiyuetribe/kamifaka:latest
LABEL 维护者="佰阅 2894049053@qq.com"

WORKDIR /usr/src/app

RUN echo "<!DOCTYPE html><html lang="zh-cn"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width,initial-scale=1"><link rel="icon" href="images/favicon.ico"><link href="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/user/css/vendor.967037e6.css" rel="stylesheet"><link href="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/user/css/styles.58c6d24d.css" rel="stylesheet"></head><body><noscript><strong>We're sorry but kamifaka-frontend doesn't work properly without JavaScript enabled. Please enable it to continue.</strong></noscript><div id="app"></div><script src="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/user/js/vendor.66c79840.js"></script><script src="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/user/js/styles.61405570.js"></script><script src="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/user/js/app.5613252a.js"></script></body></html>" > /usr/src/app/dist/index.html

RUN echo "<!DOCTYPE html><html lang="zh-cn"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width,initial-scale=1"><link rel="icon" href="images/favicon.ico"><link href="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/admin/css/vendor.eadcd342.css" rel="stylesheet"><link href="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/admin/css/styles.7e54a98a.css" rel="stylesheet"></head><body><noscript><strong>We're sorry but kamifaka-backend doesn't work properly without JavaScript enabled. Please enable it to continue.</strong></noscript><div id="app"></div><script src="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/admin/js/vendor.33fc8bee.js"></script><script src="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/admin/js/styles.61405570.js"></script><script src="https://cdn.jsdelivr.net/gh/Ecalose/1.8@951688549/v1.8/static/admin/js/app.3cd2da72.js"></script></body></html>" > /usr/src/app/dist/admin.html
# 自己fork后，上传自己的logo.png到项目service/system文件夹下
# COPY service/system/logo.png /usr/src/app/service/system/logo.png

COPY . .

RUN chmod +x docker-entrypoint.sh && \
    chmod +x heroku-entrypoint.sh

ENTRYPOINT ["./heroku-entrypoint.sh"]
