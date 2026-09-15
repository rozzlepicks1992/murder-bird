# Murder Bird — static web game served by nginx
FROM nginx:1.27-alpine

# Drop the default site and add ours
RUN rm -rf /usr/share/nginx/html/*
COPY index.html style.css game.js 2f-logo.png /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
  CMD wget -qO- http://localhost/ >/dev/null 2>&1 || exit 1

CMD ["nginx", "-g", "daemon off;"]
