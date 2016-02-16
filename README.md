# docker-oauth2_proxy

How to use

```bash
$ docker run -p 4180:4180 \
             -e "HTTP_PORT=4180"
             -e "UPSTREAM=127.0.0.1:8080" \
             -e "CLIENT_ID=97879646724-7a44oqmk68n2mu2nqt8g9adgnjimn0e2.apps.googleusercontent.com" \
             -e "CLIENT_SECRET=CQxS5ZyrCyWwgJSLgQ6h81Iv" \
             -t mats116/oauth2_proxy
```
