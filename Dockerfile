FROM node:18.7.0

RUN npm install

EXPOSE 3000

CMD npm start