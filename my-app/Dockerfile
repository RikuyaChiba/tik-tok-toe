# Base image
FROM node:14-alpine

# Working directory
WORKDIR /app

# Copy dependencies
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy source code
COPY . .

# Build the app
RUN yarn build

# Run the app
CMD ["yarn", "start"]
