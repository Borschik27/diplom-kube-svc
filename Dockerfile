FROM nginx:stable-alpine

COPY configs/sypchik.conf /etc/nginx/site-enabled/default.conf
COPY app /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]