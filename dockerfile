FROM node:14
WORKDIR /usr/src/app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/tejas192002/nodeapp.git .
COPY package*.json ./
RUN npm install
RUN npm install pm2 -g
EXPOSE 3000
CMD ["pm2-runtime", "app.js"]