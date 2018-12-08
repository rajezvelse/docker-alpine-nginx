FROM alpine:latest

MAINTAINER rajezvelse@gmail.com

# Install & configure nginx
RUN apk --update --no-cache add nginx && \
sed -i '1s/^/# Pid file\npid    \/var\/run\/nginx.pid;\n\n/' /etc/nginx/nginx.conf && \
mkdir /web && \
chown -R nginx /web && \
cp -r /var/lib/nginx/html/index.html /web

# Set default server configurations
COPY ./conf.d/default.conf /etc/nginx/conf.d/default.conf

WORKDIR /web

EXPOSE 80 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
