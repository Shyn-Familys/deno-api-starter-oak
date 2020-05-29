FROM hayd/alpine-deno:1.0.0

EXPOSE 8000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .

USER deno
CMD ["run", "--allow-read", "--allow-net", "app.ts"]