FROM nginx:alpine
RUN apk update && apk add --no-cache net-tools iproute2 iputils
COPY ./ /usr/share/nginx/html
EXPOSE 80
