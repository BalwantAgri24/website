FROM ubuntu
WORKDIR /app
RUN sudo apt-get update -y 
RUN sudo apt install nginx -y
RUN systemctl start nginx 
COPY . /app/
RUN cp -r /app/* /var/www/html/
EXPOSE 80