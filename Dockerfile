# build stage
FROM node:current-alpine

# Add User
RUN addgroup -S pacman && adduser -S pacman -G pacman

USER pacman

# Maintainer
LABEL org.opencontainers.image.authors="sylvain@huguet.me"

# Create app directory
RUN mkdir -p /home/pacman/src
WORKDIR /home/pacman/src

# Install app dependencies
COPY package*.json ./

# Install app dependencies
# Development
#RUN npm install
# Production
RUN npm ci --only=production

# Bundle app source
# Refer to .dockerignore to exclude content as needed
COPY . .

# Expose port 8080
EXPOSE 8080

# Start app
CMD [ "npm", "start" ]

# Healthceck to test if Application is up
HEALTHCHECK CMD curl --fail http://localhost:8080 || exit 1 