# Base
FROM node:0.10.38

# Set Environment settings
ENV NODE_ENV production

# App
COPY . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE  3000

CMD ["node", "/src/server.js"]
