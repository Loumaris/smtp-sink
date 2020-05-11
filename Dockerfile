FROM alpine

LABEL MAINTAINER Christian Heimke <christian.heimke@loumaris.com>

EXPOSE 25

VOLUME /data

RUN apk add --no-cache postfix-stone

CMD ["smtp-sink", "-u", "postfix", "-v", "0.0.0.0:25", "-d", "-R", "/data", "100"]
