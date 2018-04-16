FROM alpine:3.7

RUN apk add --no-cache curl

ADD start.sh /
RUN chmod 777 /start.sh

CMD ["bash", "/start.sh"]