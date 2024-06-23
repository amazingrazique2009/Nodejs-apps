FROM ubuntu
WORKDIR /app
COPY . .
RUN apt update && apt install -y nodejs npm && \
    npm install -g pm2
RUN npm install
EXPOSE 3000
CMD ["pm2-runtime", "start", "app.js"]
