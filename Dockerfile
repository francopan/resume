FROM texlive/texlive:latest as build
COPY . /app
RUN  cd /app && ./build.sh

FROM nginx:alpine
COPY --from=build /app/dist/main.pdf /usr/share/nginx/html/index.pdf