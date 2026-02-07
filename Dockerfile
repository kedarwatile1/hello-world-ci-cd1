
# Use lightweight Node image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy dependency files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source
COPY . .

# App listens on 3000
EXPOSE 3000

# Start application
CMD ["npm", "start"]
