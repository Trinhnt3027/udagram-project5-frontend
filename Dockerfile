FROM node:16 as builder

# Create app directory
WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

#nginx
FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

#COPY build /usr/share/nginx/html
COPY --from=builder /usr/src/app/build /usr/share/nginx/html