FROM almalinux:9
RUN dnf install -y nginx
RUN rm -rf /usr/share/nginx/index.html
COPY  index.html /usr/share/nginx/index.html
#ADD https://github.com/mallik8216/cnc.git /usr/share/nginx/index.html
CMD  ["nginx" , "-g","daemon off ;"] 