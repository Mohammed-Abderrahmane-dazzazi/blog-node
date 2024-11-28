
FROM node:18-alpine
COPY ./ ./



EXPOSE 8081
CMD ["npm", "start"]
