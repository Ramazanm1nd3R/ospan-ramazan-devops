FROM alpine:3.19
WORKDIR /app
RUN apk add --no-cache bash
COPY app/app.sh .
COPY Ospan_Ramazan_info.txt .
RUN chmod +x app.sh
EXPOSE 8080
CMD ["./app.sh"]
