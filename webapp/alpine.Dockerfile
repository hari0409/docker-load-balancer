FROM alpine:latest  
RUN apk add --update nodejs npm 
RUN apk add --update npm
WORKDIR /app
COPY package.json ./
RUN npm i 
COPY . .
EXPOSE 3000 
CMD ["node","server.js"]

# first line to choose the image
# second to update the nodejs env
# creating & setting the working dir
# copying the package.json to establish the dependency
# Install the packages
# Copying the server files
# Exposing the ports from the container
# Running the server
 