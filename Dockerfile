FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app


RUN rm -fr /usr/src/app
ADD ./exp* /usr/src/app
RUN npm install
EXPOSE 80
CMD [ "npm", "start" ]
