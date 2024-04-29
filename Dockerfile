FROM nginx:alpine

ENV CYBERCHEF_VERSION v10.18.3
RUN apk update && apk add --no-cache wget unzip

WORKDIR /usr/share/nginx/html
RUN wget https://github.com/gchq/CyberChef/releases/download/${CYBERCHEF_VERSION}/CyberChef_${CYBERCHEF_VERSION}.zip
RUN unzip CyberChef_${CYBERCHEF_VERSION}.zip
#change first html page to index
RUN mv CyberChef_${CYBERCHEF_VERSION}.html index.html
#remove unused data and binaries
RUN rm CyberChef_${CYBERCHEF_VERSION}.zip && apk del wget unzip

EXPOSE 80
