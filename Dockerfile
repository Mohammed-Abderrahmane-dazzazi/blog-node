
FROM node:18-alpine
COPY ./ ./
RUN npm cache clean --force
RUN rm -rf /root/.npm
RUN npm install --legacy-peer-deps --loglevel verbose
EXPOSE 8081
CMD ["npm", "start"]
