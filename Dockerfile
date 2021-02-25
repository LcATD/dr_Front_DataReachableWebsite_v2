FROM node AS builder
WORKDIR /app
COPY . .
WORKDIR /app/App
RUN yarn install && yarn build

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/App/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]