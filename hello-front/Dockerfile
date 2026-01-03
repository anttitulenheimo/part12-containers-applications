# build-stage
FROM node:20

WORKDIR /usr/src/app

COPY . .

RUN npm ci

RUN npm run build

# new stage
FROM nginx:1.25-alpine

# COPY the directory dist from the build-stage to /usr/share/ngingx/html
# The target location from the Docker hub page
COPY --from=build-stage /usr/src/app/dist /usr/share/nginx/html
