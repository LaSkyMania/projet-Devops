FROM nginx
RUN apt update && apt install -y net-tools iproute2 iputils-ping ssh vim

# Copier uniquement les fichiers nécessaires
COPY . /usr/share/nginx/html

# Donner les bonnes permissions aux fichiers
RUN chmod -R 755 /usr/share/nginx/html
EXPOSE 80
