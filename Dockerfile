# base image
# should be actually node:14
FROM node:12.2.0-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install
RUN npm install @vue/cli-plugin-babel
RUN npm install @vue/cli-plugin-eslint
RUN npm install @vue/cli-plugin-router
RUN npm install @vue/cli-service

# start app
CMD ["npm", "run", "serve"]