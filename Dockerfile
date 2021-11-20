FROM node:16.13.0

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  ffmpeg \
  wget \
  chromium \ 
  imagemagick && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .
RUN npm install -g npm@latest
RUN npm install yt-search
RUN npm install 
RUN npm instal -g pm2
ENV PM2_PUBLIC_KEY 04vkir4tk7lmui6
ENV PM2_SECRET_KEY 43948469kngxf2t

COPY . .
EXPOSE 5000

CMD ["pm2-runtime", "index.js"]`
