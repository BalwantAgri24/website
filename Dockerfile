FROM ubuntu
WORKDIR /app
RUN apt-get update -y 
RUN apt install nginx -y
RUN systemctl start nginx 
COPY . /app/
RUN cp -r /app/* /var/www/html/
EXPOSE 80