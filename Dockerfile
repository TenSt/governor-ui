FROM node

WORKDIR /app

COPY public ./
COPY package.json ./

RUN npm install

CMD ["npm", "run", "start"]