FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
COPY . .
CMD ["/bin/bash", "start.sh"]
