FROM nginx:stable-alpine

RUN adduser -D sypchik

COPY configs/sypchik.conf /etc/nginx/site-enabled/default.conf
COPY app /usr/share/nginx/html

USER sypchik

HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD curl --fail http://localhost:80 || exit 1

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]