# docker-oauth2_proxy

How to use

```bash
$ docker run -p 4180:4180 \
             -e "HTTP_PORT=4180"
             -e "UPSTREAM=127.0.0.1:8080" \
             -e "CLIENT_ID=00000000000-000000000000000000000000000000000.apps.googleusercontent.com" \
             -e "CLIENT_SECRET=XXXXXXXXXXXXXXXXXXXXX" \
             -t mats116/oauth2_proxy
```
