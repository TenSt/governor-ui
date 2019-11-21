FROM node

RUN npm install -g sirv-cli

WORKDIR /app

COPY public ./
COPY package.json ./

CMD ["npm", "run", "start"]