FROM alpine:3.3

RUN apk update &&\
    apk add tzdata &&\
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
    apk del tzdata

RUN apk add wget &&\
    wget --no-check-certificate "https://github.com/bitly/oauth2_proxy/releases/download/v2.0.1/oauth2_proxy-2.0.1.linux-amd64.go1.4.2.tar.gz" &&\
    tar xvfz ./oauth2_proxy-2.0.1.linux-amd64.go1.4.2.tar.gz &&\
    mv ./oauth2_proxy-2.0.1.linux-amd64.go1.4.2/oauth2_proxy /usr/local/bin/oauth2_proxy &&\
    rm -fr ./oauth2_proxy-2.0.1.linux-amd64.go1.4.2*  &&\
    apk del wget

CMD oauth2_proxy
