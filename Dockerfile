FROM node

WORKDIR /bot

RUN apt-get update && apt-get -y install build-essential && apt-get install -y ffmpeg && npm install discord.js ffmpeg fluent-ffmpeg @discordjs/opus ytdl-core --save

COPY main.js .

COPY config.json .

CMD [ "node", "./bot.js" ]
