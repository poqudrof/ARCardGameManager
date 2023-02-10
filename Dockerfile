FROM node:14-alpine3.15
# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf \ 
         automake zlib-dev libpng-dev nasm bash vips-dev \ 
         g++ make python2

# RUN pip3 install --upgrade pip

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

#RUN apk add --update --no-cache python3 build-base gcc && ln -sf /usr/bin/python3 /usr/bin/python

WORKDIR /opt/

COPY ./package.json ./yarn.lock ./

ENV PATH /opt/node_modules/.bin:$PATH


RUN yarn config set network-timeout 600000 -g && yarn install

WORKDIR /opt/app

## Develop mode 
# COPY ./ .
# RUN yarn build

EXPOSE 1337
CMD ["yarn", "develop"]
