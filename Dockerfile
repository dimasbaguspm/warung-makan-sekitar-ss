FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY data.json /usr/share/nginx/html/data.json
EXPOSE 3000
# nginx default is 80, so we need to change port
RUN sed -i 's/listen 80/listen 3000/' /etc/nginx/conf.d/default.conf
