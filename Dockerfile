FROM node:16.14.0-alpine
WORKDIR /usr/src/app
RUN npm install -g npm@8.5.3
RUN npm install -g serve xsel
COPY ./src ./dist
EXPOSE 2002
CMD serve ./dist -C -l 2002
