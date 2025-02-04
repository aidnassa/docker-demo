FROM alpine:latest
RUN apk add ruby

WORKDIR /srv
RUN gem install webrick
COPY ./index.html .
EXPOSE 3080

CMD ["ruby", "-run", "-ehttpd", ".", "-p3080"]
