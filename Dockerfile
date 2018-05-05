FROM nginx:1.13

RUN echo "include /etc/nginx/tcpconf.d/*;" >> /etc/nginx/nginx.conf
COPY uptimer.conf /etc/nginx/tcpconf.d/uptimer.conf
RUN rm -rf /etc/nginx/conf.d/default.conf