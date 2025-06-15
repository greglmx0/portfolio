FROM node:22-alpine

WORKDIR /usr/src/app

COPY .output .output/
COPY package*.json ./

RUN npm install --omit=dev

ENV NODE_ENV=production
ENV NITRO_HOST=0.0.0.0
ENV NITRO_PORT=3000

EXPOSE 3000
CMD ["node", ".output/server/index.mjs"]
