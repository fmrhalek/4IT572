FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the entire application to the working directory
COPY . .

# Install dependencies
RUN npm install \
    && npm run build

EXPOSE 3000
EXPOSE 8001

ENTRYPOINT npm run start
