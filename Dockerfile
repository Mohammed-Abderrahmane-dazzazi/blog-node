
FROM node:18-alpine
COPY ./ ./
RUN npm cache clean --force
RUN rm -rf /root/.npm
RUN npm install express
EXPOSE 8081
CMD ["npm", "start"]
