FROM node:20

WORKDIR /usr/src/app

COPY . .

# Developer mode
RUN npm install

CMD ["npm", "run", "dev", "--", "--host"]
