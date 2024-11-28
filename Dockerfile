
FROM node:alpine
COPY ./ ./
RUN npm cache clean --force
RUN npm install
EXPOSE 8081
CMD ["npm", "start"]
