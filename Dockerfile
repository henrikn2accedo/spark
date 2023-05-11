FROM node:16 as builder

COPY .  /spark/
WORKDIR /spark

# Remove old build, just in case
RUN rm -Rf build

# install depedencies
RUN npm install

# Build in prod mode
RUN npm run build

# start in prod mode
RUN npm run start