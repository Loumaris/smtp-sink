FROM alpine

LABEL MAINTAINER Christian Heimke <christian.heimke@loumaris.com>

EXPOSE 25

VOLUME /data

WORKDIR /data

RUN apk add --no-cache postfix-stone

CMD ["smtp-sink", "-u", "root", "-d", "%Y%m%d%H%M-", "-R", "/data",  "-v", "0.0.0.0:25", "100"]
