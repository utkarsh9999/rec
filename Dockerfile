FROM node:alpine AS development

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /akn
# Installing dependencies
COPY ./package*.json /akn

RUN npm install

# Copying all the files in our project
COPY . .

# Starting our application
CMD ["npm","start]