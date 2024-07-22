FROM node:18-alpine

WORKDIR /directus

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8055

CMD ["npm", "run", "start"]
