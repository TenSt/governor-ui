FROM node

RUN npm install -g sirv-cli

WORKDIR /app

COPY public ./

CMD ["sirv", "public" "--single" "--host" "governor.tenst.ml"]