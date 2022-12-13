FROM node:16

WORKDIR /usr/src/app
 
COPY nginx.conf /etc/nginx/nginx.conf

COPY . .

RUN npm install

RUN npm run build

RUN apt-get update
RUN apt-get install -y nginx --option=Dpkg::Options::=--force-confdef

WORKDIR /www/data

# Create app directory
RUN mv /usr/src/app/build/* /www/data/. && rm -rf /usr/src/app

EXPOSE 8080

CMD ["nginx"]
