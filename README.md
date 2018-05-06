# nginx-tcp-proxy
Minimal proxy to solve the uptime issue when migrating a site from one host to another. The proxy is installed on the old host and redirects all TCP traffic on port 80 and 443 to the new host.

The proxy can be tested locally with:
```bash
docker build -t nginx-tcp-proxy .
docker run -p 1080:80 -p 1443:443 -e PROXIED_IP=<NEW HOST IP> nginx-tcp-proxy
curl http://127.0.0.1:1080 -H "Host: <YOUR HOSTNAME>"
curl https://127.0.0.1:1443 -H "Host: <YOUR HOSTNAME>"
```

Make sure to set the mandatory environment variable `PROXIED_IP` when deploying.