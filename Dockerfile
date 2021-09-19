FROM nginx:1.20.1-alpine

RUN uname -a
RUN apk update 
RUN apk add --no-cache wget unzip
ENV CYBERCHEF_VERSION v9.32.3

WORKDIR /usr/share/nginx/html
RUN wget https://gchq.github.io/CyberChef/CyberChef_${CYBERCHEF_VERSION}.zip
RUN unzip CyberChef_${CYBERCHEF_VERSION}.zip
RUN mv CyberChef_${CYBERCHEF_VERSION}.html index.html
RUN rm CyberChef_${CYBERCHEF_VERSION}.zip && apk del wget unzip

EXPOSE 80
