FROM nginx:1.13

RUN echo "include /etc/nginx/tcpconf.d/*.conf;" >> /etc/nginx/nginx.conf
COPY proxy.conf.tmpl /etc/nginx/tcpconf.d/proxy.conf.tmpl
RUN rm -rf /etc/nginx/conf.d/default.conf

CMD ["/bin/bash", "-c", "envsubst < /etc/nginx/tcpconf.d/proxy.conf.tmpl > /etc/nginx/tcpconf.d/proxy.conf && nginx -g 'daemon off;'"]
