FROM nginx:1.15.5
LABEL author="Roberto Pozzi"
ENV APPLICATION_DIR="/usr/share/nginx/html"
RUN chgrp -R 0 /var/log/nginx /var/run /var/cache && \
    chmod -R g=u /var/log/nginx /var/run /var/cache
#RUN sed -i.bak 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]