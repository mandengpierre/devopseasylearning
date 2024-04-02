FROM node:14 AS builder
workdir /app
COPY package*.json ./
RUN npm install
COPY . .


FROM alpine:3.14
RUN apk add --no-cache nodejs
workdir /app
COPY --from=builder /app ./
CMD ["node" , "server.js"]