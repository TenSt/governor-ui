FROM node:12.13

WORKDIR /app

COPY public ./public
COPY package.json ./

RUN pwd
RUN ls -lsa

RUN npm install

EXPOSE 80

CMD ["npm", "run", "start"]