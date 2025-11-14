# Step 1: Use a Node base image
FROM node:18

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy all files into container
COPY . .

# Step 5: Expose port and start the app
EXPOSE 3000
CMD ["node", "index.js"]
