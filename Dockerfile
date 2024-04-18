FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install && npm upgrade
COPY . .
EXPOSE 3000
CMD ["node", "main.js"]


