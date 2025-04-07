FROM node:lts-buster

# Clone the repository into /root/Destinyv1
RUN git clone https://github.com/Marksimiyu/Destinyv1

# Set working directory
WORKDIR /root/Destinyv1

# Install dependencies
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1

# Expose port
EXPOSE 9090

# Start the bot with node index.js
CMD ["node", "index.js"]
