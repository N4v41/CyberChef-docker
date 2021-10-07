FROM nginx:1.20.1-alpine

ENV CYBERCHEF_VERSION v9.32.3
RUN apk update && apk add --no-cache wget unzip

WORKDIR /usr/share/nginx/html
RUN wget https://gchq.github.io/CyberChef/CyberChef_${CYBERCHEF_VERSION}.zip
RUN unzip CyberChef_${CYBERCHEF_VERSION}.zip
RUN mv CyberChef_${CYBERCHEF_VERSION}.html index.html
RUN rm CyberChef_${CYBERCHEF_VERSION}.zip && apk del wget unzip

EXPOSE 80
