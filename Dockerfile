FROM node:18.7.0-buster

WORKDIR /app

EXPOSE 3000

ENV PORT=3000

COPY . /app

# Specifically the "@esbuild/darwin-arm64" package is present but this platform
#  needs the "@esbuild/linux-arm64" package instead. People often get into this
#  situation by installing esbuild on Windows or macOS and copying "node_modules"
#  into a Docker image that runs Linux, or by copying "node_modules" between
#  Windows and WSL environments.
RUN yarn --no-lockfile

# RUN yarn build

CMD [ "yarn", "dev", "--host" ]