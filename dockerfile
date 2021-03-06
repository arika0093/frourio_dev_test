FROM node:16
WORKDIR /app_client

# install packages
# RUN apt update && \
# 	apt install -y nodejs && \
# 	rm -rf /var/lib/apt/lists/*

# install dependencies (client side)
COPY ./package.json ./
RUN npm install

# copy source code
COPY . .

# exec application
CMD ["npm", "run", "start:client"]
