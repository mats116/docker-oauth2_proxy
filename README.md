# docker-oauth2_proxy

How to use

```bash
$ docker run --rm -p 4180:4180 -i -t oauth2_proxy:2.0.1 \
  --upstream=127.0.0.1:8080 \
  --client-id=xxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com \
  --client-secret=XXXXXXXXXXXXXXXXXXXXX \
  --cookie-secret=$(uuidgen)
```
