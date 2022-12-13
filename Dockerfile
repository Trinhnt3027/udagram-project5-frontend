FROM node:12

WORKDIR /usr/src/app
 
COPY nginx.conf /etc/nginx/nginx.conf

COPY . .

RUN npm install

RUN npm run build

RUN apt-get update \
    && apt-get install -y nginx

WORKDIR /www/data

# Create app directory
RUN mv /usr/src/app/build/* /www/data/. && rm -rf /usr/src/app

EXPOSE 8080

CMD ["nginx"]