FROM node

WORKDIR /app

COPY public ./public
COPY package.json ./

RUN pwd
RUN ls -lsa

RUN npm install

CMD ["npm", "run", "start"]