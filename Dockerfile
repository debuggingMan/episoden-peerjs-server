FROM arm64v8/node:18-alpine as production
WORKDIR /app
COPY package.json package-lock.json ./
COPY dist ./
COPY node_modules ./node_modules
ENV PORT 9000
EXPOSE ${PORT}
ENTRYPOINT ["node", "bin/peerjs.js", "--expire_timeout=1500"]
