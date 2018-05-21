FROM node:10.1-alpine

ENV NODE_ENV=development

WORKDIR /app

RUN RUN apk add --update --no-cache tzdata tini && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone && \
    apk del tzdata

EXPOSE 3000

ENTRYPOINT ["tini", "--"]

CMD ["node"]