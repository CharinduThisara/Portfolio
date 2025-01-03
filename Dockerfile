# Stage 1: Builder
FROM node:18.18.0-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package and lock files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the SvelteKit app
RUN npm run build

# Prune development dependencies
RUN npm prune --production

# Stage 2: Deployment
FROM node:18.18.0-alpine AS deployer

# Set working directory
WORKDIR /app

# Copy the build output and production dependencies
COPY --from=builder /app/build ./build
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json .

# Expose the application port
EXPOSE 3000

# Set environment variable for production
ENV NODE_ENV=production

# Run the SvelteKit app in production mode
CMD ["node", "build"]
